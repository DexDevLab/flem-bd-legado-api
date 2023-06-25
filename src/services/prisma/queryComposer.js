import { parseArrayToInteger, parseArrayToStringEquals } from "utils";

/**
 * Função para compor o filtro da query. Caso a requisição faça uma solicitação
 * ao BD utilizando critérios de pesquisa ("condition") e um objeto de filtro,
 * aplica a alteração a um objeto de filtro para realizar a pesquisa corretamente.
 *
 * @param {Object} criteria Conjunto de critérios de pesquisa:
 *
 * condition - Define uma condição de pesquisa, quando
 * incluído mais de 1 coluna em "columns". Caso os critérios de pesquisa
 * envolvam informações em mais de 1 coluna, é obrigatório o uso deste
 * parâmetro. Se este parâmetro for omitido e exista mais de 1 critério
 * de pesquisa em "columns", a função disparará uma exceção.
 *
 * Exemplo: condition="OR"
 *
 * excluido - se inclui entradas no BD que foram excluídas.
 *
 * query - restante dos critérios de pesquisa, os quais geralmente envolvem
 * entradas ou tabelas específicas onde valores devem ser procurados ou alterados.
 *
 * @param {Object} req HTTP request.
 * @returns Objeto contendo o fragmento da Query String para requisitar ao BD.
 */
export function queryComposer(criteria) {
  const { entity, condition, ...query } = criteria;
  const keys = Object.keys(query);
  const filter = {
    [condition]: [],
  };
  keys.forEach((key) => {
    switch (key) {
      case "id_egresso":
      case "id_situacao":
      case "id_vaga":
        filter[condition].push({
          [key]: { in: parseArrayToInteger(query[key]) },
        });
        break;
      case "nome":
      case "matriculaFlem":
      case "matriculaSAEB":
      case "cpf":
        parseArrayToStringEquals(query[key], key).map((item) =>
          filter[condition].push(item)
        );
        break;
      default:
        filter[condition] = parseArrayToString(query[key], key);
        break;
    }
  });
  return filter;
}
