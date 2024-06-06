describe('My First Test', () => {
  it('Visits the initial project page', () => {
    cy.visit('http://localhost:80/')
    cy.contains('app is running!')
  })
})
