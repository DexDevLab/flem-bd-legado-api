CREATE TABLE [Acao] (
  [id_acao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data] DateTime NOT NULL,
  [descricao] String,
  [id_egresso] Int,
  [id_tipoDeAcao] Int NOT NULL,
  [version] Int NOT NULL,
  [Egresso] Egresso,
  [TipoDeAcao] TipoDeAcao NOT NULL,
  [EnvioDeEmail] EnvioDeEmail NOT NULL
)
GO

CREATE TABLE [Acao_AUD] (
  [id_acao] Int NOT NULL,
  [REV] Int NOT NULL,
  [REVTYPE] Int,
  [data] DateTime,
  [descricao] String,
  [id_tipoDeAcao] Int,
  [VersaoDosDados] VersaoDosDados NOT NULL,
  PRIMARY KEY ([id_acao], [REV])
)
GO

CREATE TABLE [agendamentos] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data_final] DateTime,
  [data_inicial] DateTime,
  [data_registro] DateTime,
  [observacao] String,
  [status] String,
  [id_beneficiario] Int NOT NULL,
  [id_periodo] Int NOT NULL,
  [Egresso] Egresso NOT NULL,
  [periodos] periodos NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL
)
GO

CREATE TABLE [agendamentos_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data_final] DateTime,
  [data_inicial] DateTime,
  [data_registro] DateTime,
  [observacao] String,
  [status] String,
  [id_beneficiario] Int,
  [id_periodo] Int,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [AssistenciaSocial] (
  [id_assitenciasocial] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data] DateTime NOT NULL,
  [descricao] String,
  [id_egresso] Int,
  [id_tipoAssistenciaSocial] Int NOT NULL,
  [version] Int NOT NULL,
  [Egresso] Egresso,
  [TipoAssistenciaSocial] TipoAssistenciaSocial NOT NULL
)
GO

CREATE TABLE [AssistenciaSocial_AUD] (
  [id_assitenciasocial] Int NOT NULL,
  [REV] Int NOT NULL,
  [REVTYPE] Int,
  [data] DateTime,
  [descricao] String,
  [id_tipoAssistenciaSocial] Int,
  [VersaoDosDados] VersaoDosDados NOT NULL,
  PRIMARY KEY ([id_assitenciasocial], [REV])
)
GO

CREATE TABLE [avaliacao_monitoramento] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [ativo] Boolean,
  [descricao] String,
  [nome] String NOT NULL,
  [excluido] Boolean,
  [avaliacao_questionario] avaliacao_questionario NOT NULL
)
GO

CREATE TABLE [avaliacao_questionario] (
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [file_path] String,
  [id_avaliacao] Int NOT NULL,
  [id_questionario] Int NOT NULL,
  [excluido] Boolean,
  [avaliacao_monitoramento] avaliacao_monitoramento NOT NULL,
  [questionarios] questionarios NOT NULL,
  PRIMARY KEY ([id_avaliacao], [id_questionario])
)
GO

CREATE TABLE [Campanha] (
  [id_campanha] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [assunto] String NOT NULL,
  [mensagem] String NOT NULL,
  [status] Int,
  [id_contadeemail] Int,
  [id_modeloDeOficio] Int,
  [version] Int NOT NULL,
  [ContaDeEmail] ContaDeEmail,
  [ModeloDeOficio] ModeloDeOficio,
  [EnvioDeEmail] EnvioDeEmail NOT NULL
)
GO

CREATE TABLE [CategoriaDaSituacao] (
  [id_categoriaDaSituacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String NOT NULL,
  [cor] String,
  [version] Int NOT NULL,
  [Situacao] Situacao NOT NULL
)
GO

CREATE TABLE [CI] (
  [fechada] Boolean,
  [numero] Int NOT NULL,
  [id_documento] Int PRIMARY KEY,
  [ano] Int NOT NULL,
  [assunto] String,
  [id_egresso] Int,
  [Documento] Documento NOT NULL,
  [Egresso] Egresso
)
GO

CREATE TABLE [Colaborador] (
  [id_colaborador] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [ativo] Boolean,
  [cargo] String NOT NULL,
  [celular] Int,
  [email] String,
  [nome] String NOT NULL,
  [telefone] Int,
  [ID_ESC_REGIONAL] Int,
  [version] Int NOT NULL,
  [EscritorioRegional] EscritorioRegional,
  [Demandante] Demandante NOT NULL,
  [MonitorDemandante] MonitorDemandante NOT NULL,
  [registro_monitoramento_ColaboradorToregistro_monitoramento_id_monitor] registro_monitoramento NOT NULL,
  [registro_monitoramento_ColaboradorToregistro_monitoramento_id_monitor_associado] registro_monitoramento NOT NULL,
  [visita_beneficiario] visita_beneficiario NOT NULL
)
GO

CREATE TABLE [comprovacao] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [content_type] String,
  [file_name] String,
  [file_path] String,
  [file_size] Int,
  [tipo_comprovacao] String,
  [excluido] Boolean,
  [registro_monitoramento] registro_monitoramento NOT NULL
)
GO

CREATE TABLE [comprovacao_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [content_type] String,
  [file_name] String,
  [file_path] String,
  [file_size] Int,
  [tipo_comprovacao] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [ContaDeEmail] (
  [id_contaDeEmail] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [emailRemetente] String,
  [login] String,
  [nomeRemetente] String,
  [porta] Int,
  [principal] Boolean NOT NULL,
  [senha] String,
  [servidor] String,
  [version] Int NOT NULL,
  [Campanha] Campanha NOT NULL
)
GO

CREATE TABLE [CoordenadorFocal] (
  [id_coordenadorFocal] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [email] String,
  [nome] String,
  [telefone] String,
  [id_demandante] Int NOT NULL,
  [version] Int NOT NULL,
  [Demandante] Demandante NOT NULL
)
GO

CREATE TABLE [Deficiencia] (
  [id_deficiencia] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [version] Int NOT NULL,
  [Egresso] Egresso NOT NULL
)
GO

CREATE TABLE [Demandante] (
  [id_demandante] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [sigla] String,
  [demandante_cod_sistec] String,
  [data_alteracao] DateTime,
  [data_criacao] DateTime,
  [label] String,
  [id_colaborador] Int,
  [version] Int NOT NULL,
  [Colaborador] Colaborador,
  [CoordenadorFocal] CoordenadorFocal NOT NULL,
  [Instituicao] Instituicao NOT NULL,
  [MonitorDemandante] MonitorDemandante NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [RegraContratacao] RegraContratacao NOT NULL,
  [Vaga] Vaga NOT NULL
)
GO

CREATE TABLE [DistanciaEntreMunicipios] (
  [id_distanciaEntreMunicipios] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [distancia] Int,
  [id_municipioDestino] Int,
  [id_municipioOrigem] Int,
  [version] Int NOT NULL,
  [Municipio_DistanciaEntreMunicipios_id_municipioDestinoToMunicipio] Municipio,
  [Municipio_DistanciaEntreMunicipios_id_municipioOrigemToMunicipio] Municipio
)
GO

CREATE TABLE [Documento] (
  [id_documento] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [arquivo] Bytes,
  [nome] String,
  [tipo] String,
  [version] Int NOT NULL,
  [filePath] String,
  [fileLenght] Int,
  [CI] CI,
  [DocumentoDoEgresso] DocumentoDoEgresso,
  [ModeloDeOficio] ModeloDeOficio,
  [Oficio] Oficio
)
GO

CREATE TABLE [DocumentoDoEgresso] (
  [id_documento] Int PRIMARY KEY,
  [id_egresso] Int NOT NULL,
  [sigiloso] Boolean,
  [Documento] Documento NOT NULL,
  [Egresso] Egresso NOT NULL
)
GO

CREATE TABLE [Egresso] (
  [id_egresso] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [anamnese] String,
  [bairro] String,
  [celular] String,
  [cep] String,
  [complemento] String,
  [contato] String,
  [cpf] String NOT NULL,
  [dataNascimento] DateTime,
  [dataSeminarioAcolhimento] String,
  [dddCelular] String,
  [dddContato] String,
  [dddTelefone1] String,
  [dddTelefone2] String,
  [emailParticular] String,
  [endereco] String,
  [formacao] String,
  [localSeminarioAcolhimento] String,
  [matriculaFlem] String,
  [matriculaSAEB] String,
  [modalidadeSeminarioAcolhimento] String,
  [municipiosSeminarioAcolhimento] String,
  [nome] String NOT NULL,
  [nomeSeminarioAcolhimento] String,
  [numero] String,
  [observacao] String,
  [rg] String,
  [sexo] String,
  [telefone1] String,
  [telefone2] String,
  [uf] String,
  [id_pontoFocal] Int,
  [dataEventoLancamentoPE] String,
  [fardamentoRecebido] DateTime,
  [localEventoLancamentoPE] String,
  [modalidadeEventoLancamentoPE] String,
  [nomeEventoLancamentoPE] String,
  [id_municipio] Int NOT NULL,
  [id_municipioEscola] Int,
  [aso] Boolean,
  [valeAlimentacao] String,
  [valeTransporte] String,
  [tamanhoDeCamisa] String,
  [id_formacao] Int,
  [id_deficiencia] Int,
  [emailSecundario] String,
  [racaCor] Int,
  [relocacaoDeVagaAtendida] Boolean,
  [relocacaoDeVagaEncaminhada] Boolean,
  [asoPendente] Boolean,
  [cartaCidadaoPendente] Boolean,
  [cartaoVacinaPendente] Boolean,
  [carteiraAssinada] Boolean,
  [certidaoCasamentoPendente] Boolean,
  [certidaoNascimentoPendente] Boolean,
  [comprovanteEscolaridadePendente] Boolean,
  [comprovanteVotacaoPendente] Boolean,
  [comprovanteresidenciaPendente] Boolean,
  [contratoTrabalhoFlem] Boolean,
  [cpfPendente] Boolean,
  [ctpsPendente] Boolean,
  [curriculoPendente] Boolean,
  [dadosbancariosPendente] Boolean,
  [diplomaPendente] Boolean,
  [estagioConcluido] Boolean,
  [foto3x4Pendente] Boolean,
  [reservistaPendente] Boolean,
  [rgPendente] Boolean,
  [tituloEleitorPendente] Boolean,
  [escolaconclusao] String,
  [cracha] Boolean,
  [ctps] String,
  [fichaAdmissao] Boolean,
  [pis] String,
  [plano_Saude] Boolean,
  [vale_Alimentacao] Boolean,
  [vale_Transporte] Boolean,
  [data_nascimento] DateTime,
  [ddd_celular] String,
  [ddd_contato] String,
  [ddd_telefone1] String,
  [ddd_telefone2] String,
  [email_particular] String,
  [email_secundario] String,
  [fardamento_recebido] DateTime,
  [matricula_flem] String,
  [relocacao_de_vaga_atendida] Boolean,
  [relocacao_de_vaga_encaminhada] Boolean,
  [tamanho_de_camisa] String,
  [avaInformacao] String,
  [anoMatricula] String,
  [dataRespostaSemestre] DateTime,
  [modalidadeGraduacao] String,
  [nomeCursoGraduacao] String,
  [nomeInstituicaoSuperior] String,
  [rendaPPEAjuda] Boolean,
  [semestre] String,
  [tipoInstituicaoSuperior] String,
  [anoConclusaoCurso] String,
  [dataAdmissao] DateTime,
  [nomeCursoTecnico] String,
  [nomeInstituicaoTecnico] String,
  [tipoInstituicaoTecnica] String,
  [cursoSuperior] String,
  [cursoSuperiorConcluido] String,
  [cursoTecnicoProfissionalizante] String,
  [pretendeFazerCursoSuperior] String,
  [version] Int NOT NULL,
  [Deficiencia] Deficiencia,
  [Formacao] Formacao,
  [Municipio_Egresso_id_municipioToMunicipio] Municipio NOT NULL,
  [Municipio_Egresso_id_municipioEscolaToMunicipio] Municipio,
  [PontoFocal] PontoFocal,
  [Acao] Acao NOT NULL,
  [agendamentos] agendamentos NOT NULL,
  [AssistenciaSocial] AssistenciaSocial NOT NULL,
  [CI] CI NOT NULL,
  [DocumentoDoEgresso] DocumentoDoEgresso NOT NULL,
  [EgressoLista] EgressoLista NOT NULL,
  [EnvioDeEmail] EnvioDeEmail NOT NULL,
  [MaterialEgresso] MaterialEgresso NOT NULL,
  [monitoramento] monitoramento NOT NULL,
  [Oficio] Oficio NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [Telefone] Telefone NOT NULL,
  [Vaga] Vaga NOT NULL,
  [visita_beneficiario] visita_beneficiario NOT NULL
)
GO

CREATE TABLE [Egresso_AUD] (
  [id_egresso] Int NOT NULL,
  [REV] Int NOT NULL,
  [REVTYPE] Int,
  [anamnese] String,
  [bairro] String,
  [celular] String,
  [cep] String,
  [complemento] String,
  [contato] String,
  [cpf] String,
  [dataNascimento] DateTime,
  [dataSeminarioAcolhimento] String,
  [dddCelular] String,
  [dddContato] String,
  [dddTelefone1] String,
  [dddTelefone2] String,
  [emailParticular] String,
  [endereco] String,
  [formacao] String,
  [localSeminarioAcolhimento] String,
  [matriculaFlem] String,
  [matriculaSAEB] String,
  [modalidadeSeminarioAcolhimento] String,
  [municipiosSeminarioAcolhimento] String,
  [nome] String,
  [nomeSeminarioAcolhimento] String,
  [numero] String,
  [observacao] String,
  [rg] String,
  [sexo] String,
  [telefone1] String,
  [telefone2] String,
  [uf] String,
  [dataEventoLancamentoPE] String,
  [fardamentoRecebido] DateTime,
  [localEventoLancamentoPE] String,
  [modalidadeEventoLancamentoPE] String,
  [nomeEventoLancamentoPE] String,
  [id_municipio] Int,
  [id_municipioEscola] Int,
  [aso] Boolean,
  [valeAlimentacao] String,
  [valeTransporte] String,
  [tamanhoDeCamisa] String,
  [id_formacao] Int,
  [id_deficiencia] Int,
  [emailSecundario] String,
  [racaCor] Int,
  [relocacaoDeVagaAtendida] Boolean,
  [relocacaoDeVagaEncaminhada] Boolean,
  [asoPendente] Boolean,
  [cartaCidadaoPendente] Boolean,
  [cartaoVacinaPendente] Boolean,
  [carteiraAssinada] Boolean,
  [certidaoCasamentoPendente] Boolean,
  [certidaoNascimentoPendente] Boolean,
  [comprovanteEscolaridadePendente] Boolean,
  [comprovanteVotacaoPendente] Boolean,
  [comprovanteresidenciaPendente] Boolean,
  [contratoTrabalhoFlem] Boolean,
  [cpfPendente] Boolean,
  [ctpsPendente] Boolean,
  [curriculoPendente] Boolean,
  [dadosbancariosPendente] Boolean,
  [diplomaPendente] Boolean,
  [estagioConcluido] Boolean,
  [foto3x4Pendente] Boolean,
  [reservistaPendente] Boolean,
  [rgPendente] Boolean,
  [tituloEleitorPendente] Boolean,
  [escolaconclusao] String,
  [cracha] Boolean,
  [ctps] String,
  [fichaAdmissao] Boolean,
  [pis] String,
  [plano_Saude] Boolean,
  [vale_Alimentacao] Boolean,
  [vale_Transporte] Boolean,
  [avaInformacao] String,
  [anoMatricula] String,
  [dataRespostaSemestre] DateTime,
  [modalidadeGraduacao] String,
  [nomeCursoGraduacao] String,
  [nomeInstituicaoSuperior] String,
  [rendaPPEAjuda] Boolean,
  [semestre] String,
  [tipoInstituicaoSuperior] String,
  [anoConclusaoCurso] String,
  [dataAdmissao] DateTime,
  [nomeCursoTecnico] String,
  [nomeInstituicaoTecnico] String,
  [tipoInstituicaoTecnica] String,
  [cursoSuperior] String,
  [cursoSuperiorConcluido] String,
  [cursoTecnicoProfissionalizante] String,
  [pretendeFazerCursoSuperior] String,
  [VersaoDosDados] VersaoDosDados NOT NULL,
  PRIMARY KEY ([id_egresso], [REV])
)
GO

CREATE TABLE [EgressoLista] (
  [id_egressolista] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [feito] Boolean,
  [id_egresso] Int,
  [id_lista] Int,
  [lista] Bytes,
  [version] Int NOT NULL,
  [deAcordo] Boolean,
  [Egresso] Egresso,
  [Lista] Lista
)
GO

CREATE TABLE [EixoDeFormacao] (
  [id_eixoDeFormacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [version] Int NOT NULL,
  [Formacao] Formacao NOT NULL
)
GO

CREATE TABLE [EnvioDeEmail] (
  [descricaoEnvio] String,
  [email] String NOT NULL,
  [status] Int,
  [id_campanha] Int,
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [acao_id_acao] Int,
  [egresso_id_egresso] Int,
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [emailSecundario] String,
  [version] Int NOT NULL,
  [Acao] Acao,
  [Egresso] Egresso,
  [Campanha] Campanha
)
GO

CREATE TABLE [EscritorioRegional] (
  [id_esc_regional] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [ativo] Boolean,
  [bairro] String,
  [celular] Int,
  [cep] Int,
  [email] String,
  [logradouro] String,
  [nome] String,
  [telefone] Int,
  [ID_MUNICIPIO] Int,
  [data_alteracao] DateTime,
  [data_criacao] DateTime,
  [version] Int NOT NULL,
  [Municipio_EscritorioRegional_ID_MUNICIPIOToMunicipio] Municipio,
  [Colaborador] Colaborador NOT NULL,
  [Municipio_EscritorioRegionalToMunicipio_ID_ESC_REGIONAL] Municipio NOT NULL
)
GO

CREATE TABLE [Evento] (
  [id_evento] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data] DateTime,
  [modalidade] String,
  [nome] String,
  [tipo] String,
  [id_localDoEvento] Int,
  [version] Int NOT NULL,
  [LocalDoEvento] LocalDoEvento
)
GO

CREATE TABLE [Formacao] (
  [id_formacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [id_eixoDeFormacao] Int NOT NULL,
  [formacao_cod_sistec] String,
  [version] Int NOT NULL,
  [EixoDeFormacao] EixoDeFormacao NOT NULL,
  [Egresso] Egresso NOT NULL,
  [RegraContratacao] RegraContratacao NOT NULL
)
GO

CREATE TABLE [Instituicao] (
  [id_instituicao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [id_demandante] Int NOT NULL,
  [version] Int NOT NULL,
  [Demandante] Demandante NOT NULL,
  [UnidadeDeLotacao] UnidadeDeLotacao NOT NULL
)
GO

CREATE TABLE [Lista] (
  [id_lista] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [ativo] Boolean,
  [version] Int NOT NULL,
  [EgressoLista] EgressoLista NOT NULL
)
GO

CREATE TABLE [LocalDoEvento] (
  [id_localDoEvento] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [bairro] String,
  [cep] String,
  [logradouro] String,
  [nome] String,
  [numero] String,
  [id_municipio] Int,
  [version] Int NOT NULL,
  [Municipio] Municipio,
  [Evento] Evento NOT NULL
)
GO

CREATE TABLE [Material] (
  [id_material] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String NOT NULL,
  [observacao] String,
  [version] Int NOT NULL,
  [MaterialEgresso] MaterialEgresso NOT NULL
)
GO

CREATE TABLE [MaterialEgresso] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [dataRecebimento] DateTime,
  [lote] String NOT NULL,
  [observacao] String,
  [quantidade] Int NOT NULL,
  [id_egresso] Int,
  [material_id_material] Int NOT NULL,
  [tamanho_id_tamanho] Int NOT NULL,
  [unidade_id] Int NOT NULL,
  [version] Int NOT NULL,
  [Egresso] Egresso,
  [Material] Material NOT NULL,
  [Tamanho] Tamanho NOT NULL,
  [UnidadeDeMedida] UnidadeDeMedida NOT NULL
)
GO

CREATE TABLE [MaterialEgresso_AUD] (
  [id] Int NOT NULL,
  [REV] Int NOT NULL,
  [REVTYPE] Int,
  [dataRecebimento] DateTime,
  [lote] String,
  [observacao] String,
  [quantidade] Int,
  [id_egresso] Int,
  [VersaoDosDados] VersaoDosDados NOT NULL,
  PRIMARY KEY ([id], [REV])
)
GO

CREATE TABLE [metas] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [nome] String,
  [tipo] String,
  [registro_monitoramento] registro_monitoramento NOT NULL
)
GO

CREATE TABLE [metas_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [nome] String,
  [tipo] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [ModeloDeOficio] (
  [status] Int,
  [id_documento] Int PRIMARY KEY,
  [assunto] String,
  [dataGeracao] DateTime,
  [tipoModelo_id] Int,
  [Documento] Documento NOT NULL,
  [TipoModeloDeOficio] TipoModeloDeOficio,
  [Campanha] Campanha NOT NULL,
  [Oficio] Oficio NOT NULL
)
GO

CREATE TABLE [monitoramento] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [datacriacao] DateTime,
  [data_monitoramento] DateTime NOT NULL,
  [observacao] String,
  [usuario_criacao] String,
  [id_beneficiario] Int NOT NULL,
  [Egresso] Egresso NOT NULL
)
GO

CREATE TABLE [MonitorDemandante] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [id_demandante] Int,
  [id_colaborador] Int,
  [id_municipio] Int,
  [id_vaga] Int,
  [version] Int NOT NULL,
  [excluido] Boolean,
  [Colaborador] Colaborador,
  [Demandante] Demandante,
  [Municipio] Municipio,
  [Vaga] Vaga
)
GO

CREATE TABLE [Municipio] (
  [id_municipio] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String NOT NULL,
  [uf] String NOT NULL,
  [id_territorio] Int,
  [municipio_cod_ibge] String,
  [ID_ESC_REGIONAL] Int,
  [version] Int NOT NULL,
  [EscritorioRegional_EscritorioRegionalToMunicipio_ID_ESC_REGIONAL] EscritorioRegional,
  [Territorio] Territorio,
  [DistanciaEntreMunicipios_DistanciaEntreMunicipios_id_municipioDestinoToMunicipio] DistanciaEntreMunicipios NOT NULL,
  [DistanciaEntreMunicipios_DistanciaEntreMunicipios_id_municipioOrigemToMunicipio] DistanciaEntreMunicipios NOT NULL,
  [Egresso_Egresso_id_municipioToMunicipio] Egresso NOT NULL,
  [Egresso_Egresso_id_municipioEscolaToMunicipio] Egresso NOT NULL,
  [EscritorioRegional_EscritorioRegional_ID_MUNICIPIOToMunicipio] EscritorioRegional NOT NULL,
  [LocalDoEvento] LocalDoEvento NOT NULL,
  [MonitorDemandante] MonitorDemandante NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [RegraContratacao] RegraContratacao NOT NULL,
  [UnidadeDeLotacao] UnidadeDeLotacao NOT NULL,
  [Vaga_MunicipioToVaga_id_municipioDaVaga] Vaga NOT NULL,
  [Vaga_MunicipioToVaga_id_municipioUnidadeDeLotacao] Vaga NOT NULL
)
GO

CREATE TABLE [Notificacao] (
  [id_notificacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [dataConcluido] DateTime,
  [dataLimite] DateTime,
  [mensagem] String NOT NULL,
  [urgente] Boolean,
  [usuarioNotificado] Int NOT NULL,
  [version] Int NOT NULL
)
GO

CREATE TABLE [Oficio] (
  [numero] Int NOT NULL,
  [id_documento] Int PRIMARY KEY,
  [id_modelo] Int,
  [ano] Int NOT NULL,
  [assunto] String,
  [destinatarioExterno] String,
  [id_egresso] Int,
  [dataGeracao] DateTime,
  [data_geracao] DateTime,
  [Documento] Documento NOT NULL,
  [Egresso] Egresso,
  [ModeloDeOficio] ModeloDeOficio
)
GO

CREATE TABLE [opcao_resposta] (
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [resposta_id] Int NOT NULL,
  [pergunta_id] Int NOT NULL,
  [perguntas] perguntas NOT NULL,
  [respostas] respostas NOT NULL,
  PRIMARY KEY ([pergunta_id], [resposta_id])
)
GO

CREATE TABLE [opcao_resposta_aud] (
  [pergunta_id] Int NOT NULL,
  [resposta_id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [perguntas] perguntas NOT NULL,
  [respostas] respostas NOT NULL,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([pergunta_id], [resposta_id], [rev])
)
GO

CREATE TABLE [Parametro] (
  [chave] String PRIMARY KEY,
  [descricao] String,
  [valor] String
)
GO

CREATE TABLE [parametros] (
  [id] String PRIMARY KEY,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [valor] String
)
GO

CREATE TABLE [perguntas] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [obrigatoria] Boolean NOT NULL,
  [ordem] Int NOT NULL,
  [tipo_resposta] String,
  [descricao] String,
  [opcao_resposta] opcao_resposta NOT NULL,
  [opcao_resposta_aud] opcao_resposta_aud NOT NULL,
  [resposta_item] resposta_item NOT NULL,
  [resposta_item_aud] resposta_item_aud NOT NULL
)
GO

CREATE TABLE [perguntas_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [obrigatoria] Boolean,
  [ordem] Int,
  [tipo_resposta] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [periodos] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [dia_referencia] Int,
  [mes_fim] Int,
  [mes_inicio] Int,
  [nome] String,
  [ordem] Int,
  [tipo] String,
  [agendamentos] agendamentos NOT NULL
)
GO

CREATE TABLE [periodos_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [dia_referencia] Int,
  [mes_fim] Int,
  [mes_inicio] Int,
  [nome] String,
  [ordem] Int,
  [tipo] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [PontoFocal] (
  [id_pontoFocal] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [email] String,
  [nome] String NOT NULL,
  [telefone1] String,
  [telefone2] String,
  [telefone3] String,
  [telefone4] String,
  [telefone5] String,
  [id_unidadeDeLotacao] Int NOT NULL,
  [version] Int NOT NULL,
  [UnidadeDeLotacao] UnidadeDeLotacao NOT NULL,
  [Egresso] Egresso NOT NULL
)
GO

CREATE TABLE [questionarios] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [autonomia] String,
  [conhecimento] String,
  [descricao_desvio_de_funcao] String,
  [desvio_de_funcao] String,
  [experiencia_profissional] String,
  [habilidade] String,
  [motivacao] String,
  [observacao] String,
  [pontualidade] String,
  [tipo_desvio_de_funcao] String,
  [id_registro_monitoramento] Int NOT NULL,
  [acidente_de_trabalho] Boolean,
  [gravida] Boolean,
  [excluido] Boolean,
  [descricao_acidente_de_trabalho] String,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [avaliacao_questionario] avaliacao_questionario NOT NULL
)
GO

CREATE TABLE [questionarios_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [acidente_de_trabalho] Boolean,
  [autonomia] String,
  [conhecimento] String,
  [descricao_desvio_de_funcao] String,
  [desvio_de_funcao] String,
  [experiencia_profissional] String,
  [gravida] Boolean,
  [habilidade] String,
  [motivacao] String,
  [observacao] String,
  [pontualidade] String,
  [tipo_desvio_de_funcao] String,
  [id_registro_monitoramento] Int,
  [descricao_acidente_de_trabalho] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [registro_monitoramento] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data_monitoramento] DateTime NOT NULL,
  [data_prox_monitoramento] DateTime,
  [links] String,
  [observacao] String,
  [principais_registros] String,
  [sub_meta] String,
  [unidade_lotacao] String,
  [id_beneficiario] Int NOT NULL,
  [id_comprovacao] Int,
  [id_demandante] Int,
  [id_monitor] Int NOT NULL,
  [id_monitor_associado] Int NOT NULL,
  [id_municipio] Int,
  [presente] Boolean,
  [excluido] Boolean,
  [id_agendamento] Int,
  [id_meta] Int,
  [tipo_monitoramento] String,
  [agendamentos] agendamentos,
  [Egresso] Egresso NOT NULL,
  [comprovacao] comprovacao,
  [Demandante] Demandante,
  [metas] metas,
  [Colaborador_ColaboradorToregistro_monitoramento_id_monitor] Colaborador NOT NULL,
  [Colaborador_ColaboradorToregistro_monitoramento_id_monitor_associado] Colaborador NOT NULL,
  [Municipio] Municipio,
  [questionarios] questionarios NOT NULL,
  [resposta_item] resposta_item NOT NULL,
  [resposta_item_aud] resposta_item_aud NOT NULL
)
GO

CREATE TABLE [registro_monitoramento_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data_monitoramento] DateTime,
  [data_prox_monitoramento] DateTime,
  [links] String,
  [observacao] String,
  [presente] Boolean,
  [principais_registros] String,
  [sub_meta] String,
  [unidade_lotacao] String,
  [id_beneficiario] Int,
  [id_comprovacao] Int,
  [id_demandante] Int,
  [id_monitor] Int,
  [id_monitor_associado] Int,
  [id_municipio] Int,
  [id_agendamento] Int,
  [id_meta] Int,
  [tipo_monitoramento] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [RegraContratacao] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [ativo] Boolean,
  [demandante] Bytes,
  [formacao] Bytes,
  [municipio] Bytes,
  [demandante_id_demandante] Int,
  [formacao_id_formacao] Int,
  [municipio_id_municipio] Int,
  [version] Int NOT NULL,
  [Demandante] Demandante,
  [Formacao] Formacao,
  [Municipio] Municipio
)
GO

CREATE TABLE [resposta_item] (
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [observacao] String,
  [registro_monitoramento_id] Int NOT NULL,
  [resposta_id] Int NOT NULL,
  [pergunta_id] Int NOT NULL,
  [perguntas] perguntas NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [respostas] respostas NOT NULL,
  PRIMARY KEY ([pergunta_id], [registro_monitoramento_id], [resposta_id])
)
GO

CREATE TABLE [resposta_item_aud] (
  [pergunta_id] Int NOT NULL,
  [registro_monitoramento_id] Int NOT NULL,
  [resposta_id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [observacao] String,
  [perguntas] perguntas NOT NULL,
  [registro_monitoramento] registro_monitoramento NOT NULL,
  [respostas] respostas NOT NULL,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([pergunta_id], [registro_monitoramento_id], [resposta_id], [rev])
)
GO

CREATE TABLE [respostas] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [opcao_resposta] opcao_resposta NOT NULL,
  [opcao_resposta_aud] opcao_resposta_aud NOT NULL,
  [resposta_item] resposta_item NOT NULL,
  [resposta_item_aud] resposta_item_aud NOT NULL
)
GO

CREATE TABLE [respostas_aud] (
  [id] Int NOT NULL,
  [rev] Int NOT NULL,
  [revtype] Int,
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String,
  [revinfo] revinfo NOT NULL,
  PRIMARY KEY ([id], [rev])
)
GO

CREATE TABLE [revinfo] (
  [rev] Int PRIMARY KEY IDENTITY(1, 1),
  [revtstmp] Int,
  [agendamentos_aud] agendamentos_aud NOT NULL,
  [comprovacao_aud] comprovacao_aud NOT NULL,
  [metas_aud] metas_aud NOT NULL,
  [opcao_resposta_aud] opcao_resposta_aud NOT NULL,
  [perguntas_aud] perguntas_aud NOT NULL,
  [periodos_aud] periodos_aud NOT NULL,
  [questionarios_aud] questionarios_aud NOT NULL,
  [registro_monitoramento_aud] registro_monitoramento_aud NOT NULL,
  [resposta_item_aud] resposta_item_aud NOT NULL,
  [respostas_aud] respostas_aud NOT NULL
)
GO

CREATE TABLE [Situacao] (
  [id_situacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String NOT NULL,
  [id_categoria] Int NOT NULL,
  [cor] String,
  [version] Int NOT NULL,
  [CategoriaDaSituacao] CategoriaDaSituacao NOT NULL,
  [Vaga] Vaga NOT NULL
)
GO

CREATE TABLE [sysdiagrams] (
  [name] String NOT NULL,
  [principal_id] Int NOT NULL,
  [diagram_id] Int PRIMARY KEY IDENTITY(1, 1),
  [version] Int,
  [definition] Bytes
)
GO

CREATE TABLE [Tamanho] (
  [id_tamanho] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [descricao] String NOT NULL,
  [ordem] Int UNIQUE,
  [sigla] String NOT NULL,
  [version] Int NOT NULL,
  [MaterialEgresso] MaterialEgresso NOT NULL
)
GO

CREATE TABLE [Telefone] (
  [seq] Int NOT NULL,
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [version] Int NOT NULL,
  [descricao] String,
  [numero] String NOT NULL,
  [tipo] String,
  [id_egresso] Int NOT NULL,
  [Egresso] Egresso NOT NULL,
  PRIMARY KEY ([id_egresso], [seq])
)
GO

CREATE TABLE [Territorio] (
  [id_territorio] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [version] Int NOT NULL,
  [uf] String,
  [Municipio] Municipio NOT NULL
)
GO

CREATE TABLE [TipoAssistenciaSocial] (
  [id_tipoAssistenciaSocial] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [version] Int NOT NULL,
  [AssistenciaSocial] AssistenciaSocial NOT NULL
)
GO

CREATE TABLE [TipoDeAcao] (
  [id_tipoDeAcao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [version] Int NOT NULL,
  [Acao] Acao NOT NULL
)
GO

CREATE TABLE [TipoModeloDeOficio] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [version] Int NOT NULL,
  [ativo] Boolean,
  [codigo] String,
  [descricao] String,
  [ModeloDeOficio] ModeloDeOficio NOT NULL
)
GO

CREATE TABLE [UnidadeDeLotacao] (
  [id_unidadeDeLotacao] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String,
  [id_instituicao] Int NOT NULL,
  [bairro] String,
  [cep] String,
  [logradouro] String,
  [id_municipio] Int,
  [version] Int NOT NULL,
  [Instituicao] Instituicao NOT NULL,
  [Municipio] Municipio,
  [PontoFocal] PontoFocal NOT NULL
)
GO

CREATE TABLE [UnidadeDeMedida] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [nome] String NOT NULL,
  [sigla] String NOT NULL,
  [version] Int NOT NULL,
  [MaterialEgresso] MaterialEgresso NOT NULL
)
GO

CREATE TABLE [Vaga] (
  [id_vaga] Int PRIMARY KEY IDENTITY(1, 1),
  [dataAlteracao] DateTime,
  [dataCriacao] DateTime,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [bairroUnidadeDeLotacao] String,
  [cepUnidadeDeLotacao] String,
  [dataConvocacaoSETRESINE] String,
  [dataDeEnvioDaSituacaoParaSETRESINE] String,
  [dataInicioAtividades] DateTime,
  [dataRemessaSETRESINE] String,
  [demandante] String,
  [emailPontoFocal] String,
  [instituicao] String,
  [logradouroUnidadeDeLotacao] String,
  [mesRemessaSETRESINE] String,
  [pontoFocalNaUnidade] String,
  [publicacaoDiarioOficial] String,
  [remessaSETRESINE] String,
  [telefone1PontoFocal] String,
  [telefone2PontoFocal] String,
  [telefone3PontoFocal] String,
  [telefone4PontoFocal] String,
  [telefone5PontoFocal] String,
  [unidadeDeLotacao] String,
  [id_egresso] Int,
  [id_municipioDaVaga] Int,
  [id_municipioUnidadeDeLotacao] Int,
  [id_situacao] Int,
  [id_demandante] Int,
  [observacaoInicioAtividades] String,
  [version] Int NOT NULL,
  [Demandante] Demandante,
  [Egresso] Egresso,
  [Municipio_MunicipioToVaga_id_municipioDaVaga] Municipio,
  [Municipio_MunicipioToVaga_id_municipioUnidadeDeLotacao] Municipio,
  [Situacao] Situacao,
  [MonitorDemandante] MonitorDemandante NOT NULL
)
GO

CREATE TABLE [Vaga_AUD] (
  [id_vaga] Int NOT NULL,
  [REV] Int NOT NULL,
  [REVTYPE] Int,
  [bairroUnidadeDeLotacao] String,
  [cepUnidadeDeLotacao] String,
  [dataConvocacaoSETRESINE] String,
  [dataDeEnvioDaSituacaoParaSETRESINE] String,
  [dataInicioAtividades] DateTime,
  [dataRemessaSETRESINE] String,
  [demandante] String,
  [emailPontoFocal] String,
  [instituicao] String,
  [logradouroUnidadeDeLotacao] String,
  [mesRemessaSETRESINE] String,
  [pontoFocalNaUnidade] String,
  [publicacaoDiarioOficial] String,
  [remessaSETRESINE] String,
  [telefone1PontoFocal] String,
  [telefone2PontoFocal] String,
  [telefone3PontoFocal] String,
  [telefone4PontoFocal] String,
  [telefone5PontoFocal] String,
  [unidadeDeLotacao] String,
  [id_egresso] Int,
  [id_municipioDaVaga] Int,
  [id_municipioUnidadeDeLotacao] Int,
  [id_situacao] Int,
  [id_demandante] Int,
  [observacaoInicioAtividades] String,
  [VersaoDosDados] VersaoDosDados NOT NULL,
  PRIMARY KEY ([id_vaga], [REV])
)
GO

CREATE TABLE [VersaoDosDados] (
  [id_versao] Int PRIMARY KEY IDENTITY(1, 1),
  [login] String,
  [timestamp] Int NOT NULL,
  [Acao_AUD] Acao_AUD NOT NULL,
  [AssistenciaSocial_AUD] AssistenciaSocial_AUD NOT NULL,
  [Egresso_AUD] Egresso_AUD NOT NULL,
  [MaterialEgresso_AUD] MaterialEgresso_AUD NOT NULL,
  [Vaga_AUD] Vaga_AUD NOT NULL
)
GO

CREATE TABLE [visita_beneficiario] (
  [id] Int PRIMARY KEY IDENTITY(1, 1),
  [dataalteracao] DateTime,
  [datacriacao] DateTime,
  [excluido] Boolean,
  [usuario_atualizacao] String,
  [usuario_criacao] String,
  [data_visita] DateTime,
  [status] String,
  [id_colaborador] Int,
  [id_egresso] Int,
  [Colaborador] Colaborador,
  [Egresso] Egresso
)
GO

CREATE UNIQUE INDEX [DistanciaEntreMunicipios_index_0] ON [DistanciaEntreMunicipios] ("id_municipioDestino", "id_municipioOrigem")
GO

CREATE UNIQUE INDEX [sysdiagrams_index_1] ON [sysdiagrams] ("principal_id", "name")
GO

ALTER TABLE [Acao] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [Acao] ADD FOREIGN KEY ([id_tipoDeAcao]) REFERENCES [TipoDeAcao] ([id_tipoDeAcao])
GO

ALTER TABLE [Acao_AUD] ADD FOREIGN KEY ([REV]) REFERENCES [VersaoDosDados] ([id_versao])
GO

ALTER TABLE [agendamentos] ADD FOREIGN KEY ([id_beneficiario]) REFERENCES [Egresso] ([id_egresso])
GO

ALTER TABLE [agendamentos] ADD FOREIGN KEY ([id_periodo]) REFERENCES [periodos] ([id])
GO

ALTER TABLE [agendamentos_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [AssistenciaSocial] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [AssistenciaSocial] ADD FOREIGN KEY ([id_tipoAssistenciaSocial]) REFERENCES [TipoAssistenciaSocial] ([id_tipoAssistenciaSocial])
GO

ALTER TABLE [AssistenciaSocial_AUD] ADD FOREIGN KEY ([REV]) REFERENCES [VersaoDosDados] ([id_versao])
GO

ALTER TABLE [avaliacao_questionario] ADD FOREIGN KEY ([id_avaliacao]) REFERENCES [avaliacao_monitoramento] ([id])
GO

ALTER TABLE [avaliacao_questionario] ADD FOREIGN KEY ([id_questionario]) REFERENCES [questionarios] ([id])
GO

ALTER TABLE [Campanha] ADD FOREIGN KEY ([id_contadeemail]) REFERENCES [ContaDeEmail] ([id_contaDeEmail]) ON DELETE NO ACTION
GO

ALTER TABLE [Campanha] ADD FOREIGN KEY ([id_modeloDeOficio]) REFERENCES [ModeloDeOficio] ([id_documento]) ON DELETE NO ACTION
GO

ALTER TABLE [Documento] ADD FOREIGN KEY ([id_documento]) REFERENCES [CI] ([id_documento])
GO

ALTER TABLE [CI] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [Colaborador] ADD FOREIGN KEY ([ID_ESC_REGIONAL]) REFERENCES [EscritorioRegional] ([id_esc_regional]) ON DELETE NO ACTION
GO

ALTER TABLE [comprovacao_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [CoordenadorFocal] ADD FOREIGN KEY ([id_demandante]) REFERENCES [Demandante] ([id_demandante])
GO

ALTER TABLE [Demandante] ADD FOREIGN KEY ([id_colaborador]) REFERENCES [Colaborador] ([id_colaborador]) ON DELETE NO ACTION
GO

ALTER TABLE [DistanciaEntreMunicipios] ADD FOREIGN KEY ([id_municipioDestino]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [DistanciaEntreMunicipios] ADD FOREIGN KEY ([id_municipioOrigem]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [Documento] ADD FOREIGN KEY ([id_documento]) REFERENCES [DocumentoDoEgresso] ([id_documento])
GO

ALTER TABLE [DocumentoDoEgresso] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso])
GO

ALTER TABLE [Egresso] ADD FOREIGN KEY ([id_deficiencia]) REFERENCES [Deficiencia] ([id_deficiencia]) ON DELETE NO ACTION
GO

ALTER TABLE [Egresso] ADD FOREIGN KEY ([id_formacao]) REFERENCES [Formacao] ([id_formacao]) ON DELETE NO ACTION
GO

ALTER TABLE [Egresso] ADD FOREIGN KEY ([id_municipio]) REFERENCES [Municipio] ([id_municipio])
GO

ALTER TABLE [Egresso] ADD FOREIGN KEY ([id_municipioEscola]) REFERENCES [Municipio] ([id_municipio])
GO

ALTER TABLE [Egresso] ADD FOREIGN KEY ([id_pontoFocal]) REFERENCES [PontoFocal] ([id_pontoFocal]) ON DELETE NO ACTION
GO

ALTER TABLE [Egresso_AUD] ADD FOREIGN KEY ([REV]) REFERENCES [VersaoDosDados] ([id_versao])
GO

ALTER TABLE [EgressoLista] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [EgressoLista] ADD FOREIGN KEY ([id_lista]) REFERENCES [Lista] ([id_lista]) ON DELETE NO ACTION
GO

ALTER TABLE [EnvioDeEmail] ADD FOREIGN KEY ([acao_id_acao]) REFERENCES [Acao] ([id_acao]) ON DELETE NO ACTION
GO

ALTER TABLE [EnvioDeEmail] ADD FOREIGN KEY ([egresso_id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [EnvioDeEmail] ADD FOREIGN KEY ([id_campanha]) REFERENCES [Campanha] ([id_campanha]) ON DELETE NO ACTION
GO

ALTER TABLE [Municipio] ADD FOREIGN KEY ([id_municipio]) REFERENCES [EscritorioRegional] ([ID_MUNICIPIO]) ON DELETE NO ACTION
GO

ALTER TABLE [Evento] ADD FOREIGN KEY ([id_localDoEvento]) REFERENCES [LocalDoEvento] ([id_localDoEvento]) ON DELETE NO ACTION
GO

ALTER TABLE [Formacao] ADD FOREIGN KEY ([id_eixoDeFormacao]) REFERENCES [EixoDeFormacao] ([id_eixoDeFormacao])
GO

ALTER TABLE [Instituicao] ADD FOREIGN KEY ([id_demandante]) REFERENCES [Demandante] ([id_demandante])
GO

ALTER TABLE [LocalDoEvento] ADD FOREIGN KEY ([id_municipio]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [MaterialEgresso] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [MaterialEgresso] ADD FOREIGN KEY ([material_id_material]) REFERENCES [Material] ([id_material])
GO

ALTER TABLE [MaterialEgresso] ADD FOREIGN KEY ([tamanho_id_tamanho]) REFERENCES [Tamanho] ([id_tamanho])
GO

ALTER TABLE [MaterialEgresso] ADD FOREIGN KEY ([unidade_id]) REFERENCES [UnidadeDeMedida] ([id])
GO

ALTER TABLE [MaterialEgresso_AUD] ADD FOREIGN KEY ([REV]) REFERENCES [VersaoDosDados] ([id_versao])
GO

ALTER TABLE [metas_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [Documento] ADD FOREIGN KEY ([id_documento]) REFERENCES [ModeloDeOficio] ([id_documento])
GO

ALTER TABLE [ModeloDeOficio] ADD FOREIGN KEY ([tipoModelo_id]) REFERENCES [TipoModeloDeOficio] ([id]) ON DELETE NO ACTION
GO

ALTER TABLE [monitoramento] ADD FOREIGN KEY ([id_beneficiario]) REFERENCES [Egresso] ([id_egresso])
GO

ALTER TABLE [MonitorDemandante] ADD FOREIGN KEY ([id_colaborador]) REFERENCES [Colaborador] ([id_colaborador]) ON DELETE NO ACTION
GO

ALTER TABLE [MonitorDemandante] ADD FOREIGN KEY ([id_demandante]) REFERENCES [Demandante] ([id_demandante]) ON DELETE NO ACTION
GO

ALTER TABLE [MonitorDemandante] ADD FOREIGN KEY ([id_municipio]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [MonitorDemandante] ADD FOREIGN KEY ([id_vaga]) REFERENCES [Vaga] ([id_vaga]) ON DELETE NO ACTION
GO

ALTER TABLE [EscritorioRegional] ADD FOREIGN KEY ([id_esc_regional]) REFERENCES [Municipio] ([ID_ESC_REGIONAL]) ON DELETE NO ACTION
GO

ALTER TABLE [Municipio] ADD FOREIGN KEY ([id_territorio]) REFERENCES [Territorio] ([id_territorio]) ON DELETE NO ACTION
GO

ALTER TABLE [Documento] ADD FOREIGN KEY ([id_documento]) REFERENCES [Oficio] ([id_documento])
GO

ALTER TABLE [Oficio] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [Oficio] ADD FOREIGN KEY ([id_modelo]) REFERENCES [ModeloDeOficio] ([id_documento]) ON DELETE NO ACTION
GO

ALTER TABLE [opcao_resposta] ADD FOREIGN KEY ([pergunta_id]) REFERENCES [perguntas] ([id])
GO

ALTER TABLE [opcao_resposta] ADD FOREIGN KEY ([resposta_id]) REFERENCES [respostas] ([id])
GO

ALTER TABLE [opcao_resposta_aud] ADD FOREIGN KEY ([pergunta_id]) REFERENCES [perguntas] ([id])
GO

ALTER TABLE [opcao_resposta_aud] ADD FOREIGN KEY ([resposta_id]) REFERENCES [respostas] ([id])
GO

ALTER TABLE [opcao_resposta_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [perguntas_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [periodos_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [PontoFocal] ADD FOREIGN KEY ([id_unidadeDeLotacao]) REFERENCES [UnidadeDeLotacao] ([id_unidadeDeLotacao])
GO

ALTER TABLE [questionarios] ADD FOREIGN KEY ([id_registro_monitoramento]) REFERENCES [registro_monitoramento] ([id])
GO

ALTER TABLE [questionarios_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_agendamento]) REFERENCES [agendamentos] ([id]) ON DELETE NO ACTION
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_beneficiario]) REFERENCES [Egresso] ([id_egresso])
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_comprovacao]) REFERENCES [comprovacao] ([id]) ON DELETE NO ACTION
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_demandante]) REFERENCES [Demandante] ([id_demandante]) ON DELETE NO ACTION
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_meta]) REFERENCES [metas] ([id]) ON DELETE NO ACTION
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_monitor]) REFERENCES [Colaborador] ([id_colaborador])
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_monitor_associado]) REFERENCES [Colaborador] ([id_colaborador])
GO

ALTER TABLE [registro_monitoramento] ADD FOREIGN KEY ([id_municipio]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [registro_monitoramento_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [RegraContratacao] ADD FOREIGN KEY ([demandante_id_demandante]) REFERENCES [Demandante] ([id_demandante]) ON DELETE NO ACTION
GO

ALTER TABLE [RegraContratacao] ADD FOREIGN KEY ([formacao_id_formacao]) REFERENCES [Formacao] ([id_formacao]) ON DELETE NO ACTION
GO

ALTER TABLE [RegraContratacao] ADD FOREIGN KEY ([municipio_id_municipio]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [resposta_item] ADD FOREIGN KEY ([pergunta_id]) REFERENCES [perguntas] ([id])
GO

ALTER TABLE [resposta_item] ADD FOREIGN KEY ([registro_monitoramento_id]) REFERENCES [registro_monitoramento] ([id])
GO

ALTER TABLE [resposta_item] ADD FOREIGN KEY ([resposta_id]) REFERENCES [respostas] ([id])
GO

ALTER TABLE [resposta_item_aud] ADD FOREIGN KEY ([pergunta_id]) REFERENCES [perguntas] ([id])
GO

ALTER TABLE [resposta_item_aud] ADD FOREIGN KEY ([registro_monitoramento_id]) REFERENCES [registro_monitoramento] ([id])
GO

ALTER TABLE [resposta_item_aud] ADD FOREIGN KEY ([resposta_id]) REFERENCES [respostas] ([id])
GO

ALTER TABLE [resposta_item_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [respostas_aud] ADD FOREIGN KEY ([rev]) REFERENCES [revinfo] ([rev])
GO

ALTER TABLE [Situacao] ADD FOREIGN KEY ([id_categoria]) REFERENCES [CategoriaDaSituacao] ([id_categoriaDaSituacao])
GO

ALTER TABLE [Telefone] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso])
GO

ALTER TABLE [UnidadeDeLotacao] ADD FOREIGN KEY ([id_instituicao]) REFERENCES [Instituicao] ([id_instituicao])
GO

ALTER TABLE [UnidadeDeLotacao] ADD FOREIGN KEY ([id_municipio]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga] ADD FOREIGN KEY ([id_demandante]) REFERENCES [Demandante] ([id_demandante]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga] ADD FOREIGN KEY ([id_municipioDaVaga]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga] ADD FOREIGN KEY ([id_municipioUnidadeDeLotacao]) REFERENCES [Municipio] ([id_municipio]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga] ADD FOREIGN KEY ([id_situacao]) REFERENCES [Situacao] ([id_situacao]) ON DELETE NO ACTION
GO

ALTER TABLE [Vaga_AUD] ADD FOREIGN KEY ([REV]) REFERENCES [VersaoDosDados] ([id_versao])
GO

ALTER TABLE [visita_beneficiario] ADD FOREIGN KEY ([id_colaborador]) REFERENCES [Colaborador] ([id_colaborador]) ON DELETE NO ACTION
GO

ALTER TABLE [visita_beneficiario] ADD FOREIGN KEY ([id_egresso]) REFERENCES [Egresso] ([id_egresso]) ON DELETE NO ACTION
GO
