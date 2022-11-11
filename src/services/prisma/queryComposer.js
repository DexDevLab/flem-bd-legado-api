/**
 * Função para compor o filtro da query. Caso a requisição faça uma solicitação
 * ao BD utilizando critérios de pesquisa ("condition") e um objeto de filtro,
 * aplica a alteração a um objeto de filtro para realizar a pesquisa corretamente.
 * @param {Object} req HTTP request.
 * @returns Objeto contendo os detalhes do filtro os quais incorporam e compõem a
 * query do Prisma.
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
