const cds =  require('@sap/cds');
class HelloService extends cds.ApplicationService{
    sayHello(name){return "Hola "+ name;}
}
module.exports = HelloService