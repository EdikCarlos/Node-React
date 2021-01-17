-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jan-2021 às 22:38
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `data`, `nome`, `msg`) VALUES
(5, '2020-10-28 02:29:28', 'Edik Carlos', 'Parabéns'),
(6, '2020-10-30 19:11:19', 'Helena', 'Preços muito bons!'),
(7, '2020-11-02 15:16:58', 'Jamal', 'Ótimo atendimento, preços dentro do mercado!'),
(8, '2020-11-02 15:18:48', 'Toninho', 'Ótimo atendimento, porém deviam ter uma entrega mais rápida, fiquei a manhã toda em casa e foram entregar após o horário combinado!'),
(9, '2020-11-29 18:50:47', 'Mariana Freitas', 'Amei o site de vocês, ele é feito em React né?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `idcor` int(11) NOT NULL,
  `cor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`idcor`, `cor`) VALUES
(1, 'Branco'),
(2, 'Preto'),
(3, 'Cinza'),
(4, 'Prateado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `idproduto` int(11) NOT NULL,
  `idcor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`idproduto`, `idcor`) VALUES
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 3),
(9, 1),
(10, 1),
(11, 4),
(12, 1),
(12, 2),
(12, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(155) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `valorUnitario` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorTotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idCliente`, `nomeCliente`, `endereco`, `telefone`, `produto`, `valorUnitario`, `quantidade`, `valorTotal`) VALUES
(1, 'Pedro José Santos Cruz', 'Rua Das Oliveiras 33', '(11)93540-3327', 'Micro-ondas Consul 32 Litros Inox 220v', 1719.9, 1, 1719.9),
(2, 'Marcia Pereira da Costa', 'Rua Jeronimo Abreu 453', '(11)98867-4533', 'Lava-Louça Eletrolux Inox com 10 Serviços, 06 Programas de Lavagem e Painel Blue Touch', 2799, 1, 2799),
(3, 'Edik Carlos Gomes Ferreira', 'Rua Cachoeira Paulista 34', '(11)97312-8870', 'Geladeira Frost Free Consul Prata 340 litros', 2510, 2, 5020),
(4, 'Helena de Jesus Ferreira', 'Rua Ubirajara Viana 150', '(11)99112-5656', 'Micro-ondas 25 Litros Espelhado Philco 220v', 1000, 1, 1000),
(5, 'José Alison', 'Avenida BD.do Sul 454', '(11)98878-0021', 'Micro-ondas Eletrolux 20L Branco', 510, 3, 1530),
(6, 'Simone de Souza', 'Rua Mamão Preto 35', '(11)96673-1121', 'Lava-Louça Eletrolux Inox com 10 Serviços, 06 Programas de Lavagem e Painel Blue Touch', 2799, 1, 2799),
(7, 'Claudio Fico', 'Rua Caxias 21', '(21)98623-6756', 'Lava-Louças Compacta 8 Serviços Branca 127v Brastemp', 1040, 2, 2080),
(8, 'Jacqueline Jesus', 'Rua Rio Pardo 333', '(11)98767-4432', 'Lavadora de Roupas Brastemp 11Kg com Turbo Perfomance Branca', 1250, 1, 1250),
(9, 'Tomas da Silva', 'Avenida São Tomé', '(11)98788-2231', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', 1099, 1, 1099),
(10, 'Marcelo Oliveira', 'Rua Mar Vermelho 32', '(12)98788-1754', 'Fogão de Piso 4 Bocas Monaco com Acendimento Automatico', 519, 1, 519),
(11, 'Bianca Rondon', 'Rua Rio Feio 627', '(11)98344-1989', 'Lavadora de Roupas Philco Inverter 12Kg', 1999, 1, 1999);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `precoinicial` float DEFAULT NULL,
  `precofinal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `imagem`, `precoinicial`, `precofinal`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', './produtos/gel_brastemp_side.jpeg', 6389, 6389),
(2, 'geladeira', 'Geladeira Frost Free Brastemp Branca 375 litros', './produtos/gel_brastemp_frost.jpeg', 2867, 1919),
(3, 'geladeira', 'Geladeira Frost Free Consul Prata 340 litros', './produtos/gel_consul_prata.jpeg', 3329, 2510),
(4, 'fogao', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', './produtos/fog_consul_inox.jpeg', 1399, 1099),
(5, 'fogao', 'Fogão de Piso 4 Bocas Monaco com Acendimento Automatico', './produtos/fog_atlas_monaco.jpeg', 789, 519),
(6, 'microondas', 'Micro-ondas Consul 32 Litros Inox 220v', './produtos/micro_consul_inox.jpeg', 2400.2, 1719.9),
(7, 'microondas', 'Micro-ondas 25 Litros Espelhado Philco 220v', './produtos/micro_philco_espelhado.jpeg', 1500, 1000),
(8, 'microondas', 'Micro-ondas Eletrolux 20L Branco', './produtos/micro_eletrolux_bco.jpeg', 689, 510),
(9, 'lavaroupas', 'Lavadora de Roupas Brastemp 11Kg com Turbo Perfomance Branca', './produtos/lavadora_brastemp.jpeg', 1800, 1250),
(10, 'lavaroupas', 'Lavadora de Roupas Philco Inverter 12Kg', './produtos/lavadora_philco_inverter.jpeg', 2350, 1999),
(11, 'lavaloucas', 'Lava-Louça Eletrolux Inox com 10 Serviços, 06 Programas de Lavagem e Painel Blue Touch', './produtos/lava_louca_eletrolux.jpeg', 3489, 2799),
(12, 'lavaloucas', 'Lava-Louças Compacta 8 Serviços Branca 127v Brastemp', './produtos/lava_louca_brastemp.jpeg', 1689, 1040);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`idcor`);

--
-- Índices para tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idproduto`,`idcor`),
  ADD KEY `idcor` (`idcor`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `cores`
--
ALTER TABLE `cores`
  MODIFY `idcor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`idcor`) REFERENCES `cores` (`idcor`),
  ADD CONSTRAINT `loja_ibfk_2` FOREIGN KEY (`idproduto`) REFERENCES `produtos` (`idproduto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
