import { getVagas, getVagasByFilter } from "controller/vagas";
import { allowCors } from "services/apiAllowCors";
import { queryComposer } from "services/prisma/queryComposer";
import { exceptionHandler } from "utils/exceptionHandler";

/**
 * Fornece Vagas e listas de Vagas conforme critérios.
 * Recebe um request HTTP com os seguintes parâmetros:
 * entity - a entidade do Projeto (Bahia, Tocantins etc). É dinamicamente
 * atribuído pelo caminho da requisição à API.
 * condition - condição para determinar as opções da filtragem. É um parâmetro
 * mandatório na query string da requisição.
 * params - demais parâmetros não mencionados, os quais caem no critério de
 * filtragem dependendo das colunas da tabela requisitada pela query.
 * Requer ao menos "condition" (ex. condition=OR) e um objeto de filtro (ex. nome="Fulano")
 * para realizar a pesquisa com o BD.
 * @method handler
 * @memberof module:vagas
 * @param {Object} req HTTP request. Apenas GET é aceito
 * @param {Object} res HTTP response
 * @returns {Object} HTTP response como JSON contendo a resposta da query consultada.
 */
async function handler(req, res) {
  if (req.method === "GET") {
    // CONSTRÓI O FILTRO CONTENDO OS CRIÉRIOS DE PESQUISA
    const filter = queryComposer(req.query);
    const { entity, condition, ...params } = req.query;
    try {
      // SE NENHUM CRITÉRIO DE PESQUISA É INCLUÍDO, ELE RETORNA TODOS OS BENEFICIÁRIOS.
      if (Object.keys(params).length === 0) {
        const query = await getVagas();
        return res.status(200).json({ status: "ok", query });
      }
      /**
       * SE ALGUM CRITÉRIO É INCLUÍDO JUNTAMENTE COM A CONDIÇÃO DE PESQUISA, RETORNA
       * O RESULTADO DA QUERY FILTRADA.
       */
      if (Object.keys(filter[condition]).length > 0) {
        try {
          const query = await getVagasByFilter(filter);
          return res.status(200).json({ status: "ok", query });
        } catch (e) {
          // SE UM CRITÉRIO FOR INCLUÍDO MAS NÃO A CONDIÇÃO DE PESQUISA, RETORNA ERRO
          if (!condition) {
            const error = new Error("A chamada requer 'CONDITION'");
            error.status = 400;
            return exceptionHandler(error, res);
          }
          // SE A CONSULTA RESULTOU EM ERRO POR QUALQUER OUTRO MOTIVO
          return exceptionHandler(e, res);
        }
      }
    } catch (e) {
      // SE FOI INSERIDA A CONDIÇÃO, MAS ELA ESTAVA INCORRETA, OU OS CRITÉRIOS DE PESQUISA NÃO BATEM
      const error = new Error("METHOD NOT ALLOWED");
      error.status = 405;
      return exceptionHandler(error, res);
    }
  } else {
    // SE FOI FEITO OUTRO MÉTODO ALÉM DE GET
    return exceptionHandler(null, res);
  }
}

export default allowCors(handler);
