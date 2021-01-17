import '../../estilos/estilos.css'

export default function Jumbo() {
    return (
        <div>
            <div className="jumbotron">
                <h2 className="mb-4">Seja bem vindx!</h2>
                <p>Aqui em nossa loja <strong>programadores têm desconto</strong> nos produtos para sua casa!</p>
                <a href="produtos.php" className="btn bg-warning">Clique aqui para ver nossos produtos!</a>
            </div>
            <hr />
            <div>
                <h2 className="mb-5 text-danger">Faça seu cadastro para receber nossas promoções!!!</h2>
            </div>
        </div>

    )

}