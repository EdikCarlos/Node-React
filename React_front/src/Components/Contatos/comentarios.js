import React, { useState, useEffect } from 'react';

const Comentarios = () => {
    const [coments, setComents] = useState([]);

    useEffect(async () => {
        const url2 = "http://localhost/www/FullStackEletro_BootstrapAtt/getComent.php?table=comentarios";
        const res2 = await fetch(url2);
        setComents(await res2.json());
    }, [])


    return (
        <> {
            coments.map(row => {
                return (
                    <div style={{textAlign:"center", marginTop: "10px"}}>



                        Data: {row.data}<br />
                        Nome: {row.nome}<br />
                        Mensagem: {row.msg}<br />
                        <hr />



                    </div>
                )
            })
        }
        </>
    )
}


export default Comentarios
