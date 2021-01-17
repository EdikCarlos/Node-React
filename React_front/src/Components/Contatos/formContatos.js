
export default function FormContatos () {
    
    return (
        <div>
            <form className="formCont">
             <div className="form-group mx-5 text-center ">
                 <p>Nome: </p>
                 <input className="nome form-control inputNome" type="text" name="nome" />
                 <p>Mensagem:</p>
                 <input className="area_texto form-control inputMsg" type="textarea" name="msg" /><br />
                 <input className="enviar bg-light mt-1 btn-lg" type="submit" />
             </div>
        </form>
        </div>
    )
}