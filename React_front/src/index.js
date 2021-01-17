import React from 'react';
import ReactDOM from 'react-dom';
import BemVindo from './Components/Index/bemvindo';
import Menu from '../src/Components/Menu/menu';
import FormIndex from './Components/Index/formulario'
import Footer from '../src/Components/Menu/footer';
import Lojas from '../src/Components/Lojas/lojas'
import Contatos from '../src/Components/Contatos/contatos'
import Categorias from '../src/Components/Produtos/categorias'
import ListaProdutos from '../src/Components/Produtos/produtos'
import FormContatos from '../src/Components/Contatos/formContatos'
import Comentarios from '../src/Components/Contatos/comentarios'

import{BrowserRouter as Router, Route} from 'react-router-dom';


ReactDOM.render(
  <Router>
  <React.StrictMode>
    {/* Rota do Index  */}

    <Route exact path="/">
    <Menu />
    <BemVindo />
    <FormIndex />
    <Footer />
    </Route>
    
    <Route exact path="/index.php">
    <Menu />
    <BemVindo />
    <FormIndex />
    <Footer />
    </Route>
    {/* Fim rota do Index */}

    {/* Rota Produtos */}
    <Route exact path="/produtos.php">
    <Menu />
    <Categorias />
    <ListaProdutos />
    <Footer />
    </Route>
    {/* Fim rota Produtos */}

    {/* Rota Nossas Lojas */}
    <Route exact path="/lojas.php">
    <Menu />
    <Lojas />
    <Footer />
    </Route>
    {/* Fim rota Nossas Lojas */}

    {/* Rota Contatos */}
    <Route exact path="/contato.php">
    <Menu />
    <Contatos />
    <FormContatos />
    <Comentarios />
    <Footer />
    </Route>
    {/* Fim rota Contatos */}
    

</React.StrictMode>
  </Router>,
  document.getElementById('root')
);
