import { prisma } from "services/prisma";

/**
 * Lista todas as situações de vaga no BD.
 * @method getBenef
 * @memberof module:situacoes
 * @returns {Object} Objeto contendo um Array de resultados.
 */
export async function getSituacoes() {
  const queryLimit = undefined;
  return await prisma.situacao.findMany({ take: queryLimit });
}

/**
 * Lista todas as situações de vaga baseado no critério de
 * pesquisa.
 * @method getSituacoesByFilter
 * @memberof module:situacoes
 * @param {Object} filter Array de Objetos contendo os parâmetros
 * de busca.
 * @returns {Object} Objeto JSON contendo o retorno da consulta.
 */
export async function getSituacoesByFilter(filter){
  return await prisma.situacao.findMany({
    include: {
      Vaga: true,
    },
    where: {
      ...filter,
    },
  });
}