import React, { useState, useEffect } from 'react';
import '../../estilos/estilos.css';



const ListaProdutos = () => {
    const [prods, setProds] = useState([]);

    useEffect(async () => {
        // const url = "http://localhost/www/FullStackEletro_BootstrapAtt/getContent.php?table=produtos";
        const url = "http://localhost:3333/produtos";
        const res = await fetch(url);
        setProds(await res.json());
    }, [])

    let Zoom = (imagem) => {
        if(imagem.target.style.width === '120px')
        imagem.target.style = 'width:240px'
        else
        imagem.target.style = 'width:120px'
    }
    
    return (
        
        <>
        <section className="bg-white produtos" >
            {
                prods.map(row => {
                    return (
                        
                        
                            <div key={row.idproduto} className="box_produto bg-white" id={row.categoria}>
                                <img src={row.imagem} className="itens img-fluid" onClick={Zoom} alt={row.descricao}  />
                                <br />
                                <p className="descricao">{row.descricao}</p>
                                <p className="descricao" style={{ textDecoration: "line-through" }}>R${row.precoinicial}</p>
                                <p className="preco text-danger">R${row.precofinal}</p>
                                <p>Cores: {row.cor}</ p>
                                <hr />
                            </div>
                        
        
        
                    )
                }
                ) }</section>
        </>
    )
}

export default ListaProdutos;