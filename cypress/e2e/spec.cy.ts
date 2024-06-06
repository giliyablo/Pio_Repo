describe('My First Test', () => {
  it('Visits the initial project page', () => {
    cy.visit('http://18.153.72.201:80/')
    cy.contains('app is running!')
  })
})
