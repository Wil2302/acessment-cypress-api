const baseUrl = "https://api.trello.com/1";
const key = "";
const token = "";

describe("Trello API E2E", () => {
  let boardId;
  let listId;
  let cardId;

  it("Cadastrar um board", () => {
    cy.request("POST", `${baseUrl}/boards/?name=MeuBoard&key=${key}&token=${token}`)
      .then((res) => {
        expect(res.status).to.eq(200);
        boardId = res.body.id;
      });
  });

  it("Pegar a primeira lista do board", () => {
    cy.request("GET", `${baseUrl}/boards/${boardId}/lists?key=${key}&token=${token}`)
      .then((res) => {
        expect(res.status).to.eq(200);
        listId = res.body[0].id; // pega a primeira lista do board
      });
  });

  it("Cadastrar um card na lista", () => {
    cy.request("POST", `${baseUrl}/cards?idList=${listId}&name=MeuCard&key=${key}&token=${token}`)
      .then((res) => {
        expect(res.status).to.eq(200);
        cardId = res.body.id;
      });
  });

  it("Excluir um card", () => {
    cy.request("DELETE", `${baseUrl}/cards/${cardId}?key=${key}&token=${token}`)
      .then((res) => {
        expect(res.status).to.eq(200);
      });
  });

  it("Excluir um board", () => {
    cy.request("DELETE", `${baseUrl}/boards/${boardId}?key=${key}&token=${token}`)
      .then((res) => {
        expect(res.status).to.eq(200);
      });
  });
});
