import { prisma } from "services/prisma";

/**
 * Lista todas as vagas no BD.
 * @method getVagas
 * @memberof module:vagas
 * @returns {Object} Objeto contendo um Array de resultados.
 */
export async function getVagas() {
  const queryLimit = 4000;
  return await prisma.vaga.findMany({ take: queryLimit });
}


/**
 * Lista todas as situações de vaga baseado no critério de
 * pesquisa.
 * @method getVagasByFilter
 * @memberof module:vagas
 * @param {Object} filter Array de Objetos contendo os parâmetros
 * de busca.
 * @returns {Object} Objeto JSON contendo o retorno da consulta.
 */
export async function getVagasByFilter(filter){
  return await prisma.vaga.findMany({
    include: {
      Situacao: true,
    },
    where: {
      ...filter,
    },
  });
}
