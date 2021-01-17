import '../../estilos/estilos.css'

export default function Lojas() {
    return (
        <div>
            <main>
                <header>
                    <h2 className="display-4">Nossas Lojas</h2>
                </header>
                <hr />
                    <div className="row">
                        <div className="container_lojas">
                            <div className="lojas">
                                <h3>Rio de Janeiro</h3>
                                <p>Avenida Presidente Vargas, 5000</p>
                                <p>10 &ordm; andar</p>
                                <p>Centro</p>
                                <p>(21) 3333-3333</p>
                            </div>

                            <div className="lojas">
                                <h3>São Paulo</h3>
                                <p>Avenida Paulista, 985</p>
                                <p>3 &ordm; andar</p>
                                <p>Jardins</p>
                                <p>(11) 4444-4444</p>
                            </div>

                            <div className="lojas">
                                <h3>Santa Catarina</h3>
                                <p>Rua Major Ávila, 370</p>
                                <p>Vila Mariana</p>
                                <p>(47) 5555-5555</p>
                                <p>&nbsp;</p>
                            </div>
                        </div>
                    </div>
            </main>
        </div>
    )
}