import { prisma } from "services/prisma";

/**
 * Lista todos os beneficiários no BD.
 * @method getBenef
 * @memberof module:beneficiarios
 * @returns {Object} Objeto contendo um Array de resultados.
 */
export async function getBenef() {
  const queryLimit = 1350;
  return await prisma.egresso.findMany({ take: queryLimit });
}


/**
 * Lista todos os beneficiários baseado no critério de
 * pesquisa.
 * @method getBenefByFilter
 * @memberof module:beneficiarios
 * @param {Object} filter Array de Objetos contendo os parâmetros
 * de busca.
 * @returns {Object} Objeto JSON contendo o retorno da consulta.
 */
export async function getBenefByFilter(filter){
  return await prisma.egresso.findMany({
    include: {
      Vaga: {
        include: {
          Situacao: true,
        },
      },
    },
    where: {
      ...filter,
    },
  });
}
