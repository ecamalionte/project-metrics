var I18n = I18n || {};
I18n.translations = {"en":{"date":{"formats":{"default":"%Y-%m-%d","short":"%b %d","long":"%B %d, %Y"},"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"order":["year","month","day"]},"time":{"formats":{"default":"%a, %d %b %Y %H:%M:%S %z","short":"%d %b %H:%M","long":"%B %d, %Y %H:%M"},"am":"am","pm":"pm"},"support":{"array":{"words_connector":", ","two_words_connector":" and ","last_word_connector":", and "}},"number":{"format":{"separator":".","delimiter":",","precision":3,"significant":false,"strip_insignificant_zeros":false},"currency":{"format":{"format":"%u%n","unit":"$","separator":".","delimiter":",","precision":2,"significant":false,"strip_insignificant_zeros":false}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}},"human":{"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"kb":"KB","mb":"MB","gb":"GB","tb":"TB"}},"decimal_units":{"format":"%n %u","units":{"unit":"","thousand":"Thousand","million":"Million","billion":"Billion","trillion":"Trillion","quadrillion":"Quadrillion"}}}},"errors":{"format":"%{attribute} %{message}","messages":{"inclusion":"is not included in the list","exclusion":"is reserved","invalid":"is invalid","confirmation":"doesn't match %{attribute}","accepted":"must be accepted","empty":"can't be empty","blank":"can't be blank","present":"must be blank","too_long":"is too long (maximum is %{count} characters)","too_short":"is too short (minimum is %{count} characters)","wrong_length":"is the wrong length (should be %{count} characters)","not_a_number":"is not a number","not_an_integer":"must be an integer","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","equal_to":"must be equal to %{count}","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","other_than":"must be other than %{count}","odd":"must be odd","even":"must be even","taken":"has already been taken"}},"activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"one":"Cannot delete record because a dependent %{record} exists","many":"Cannot delete record because dependent %{record} exist"}}}},"datetime":{"distance_in_words":{"half_a_minute":"half a minute","less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"x_seconds":{"one":"1 second","other":"%{count} seconds"},"less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"x_days":{"one":"1 day","other":"%{count} days"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"x_months":{"one":"1 month","other":"%{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"}},"prompts":{"year":"Year","month":"Month","day":"Day","hour":"Hour","minute":"Minute","second":"Seconds"}},"helpers":{"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","update":"Update %{model}","submit":"Save %{model}"}}},"pt-BR":{"messages":{"success":"Operação executada com sucesso.","error":"Desculpe, aconteceu algum problema! Tente novamente.","logout":"Obrigado!! Você não esta mais logado"},"date":{"abbr_day_names":["Dom","Seg","Ter","Qua","Qui","Sex","Sáb"],"abbr_month_names":[null,"Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"],"day_names":["Domingo","Segunda","Terça","Quarta","Quinta","Sexta","Sábado"],"formats":{"default":"%d/%m/%Y","long":"%d de %B de %Y","short":"%d de %B"},"month_names":[null,"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"],"order":["day","month","year"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"aproximadamente 1 hora","other":"aproximadamente %{count} horas"},"about_x_months":{"one":"aproximadamente 1 mês","other":"aproximadamente %{count} meses"},"about_x_years":{"one":"aproximadamente 1 ano","other":"aproximadamente %{count} anos"},"almost_x_years":{"one":"quase 1 ano","other":"quase %{count} anos"},"half_a_minute":"meio minuto","less_than_x_minutes":{"one":"menos de um minuto","other":"menos de %{count} minutos"},"less_than_x_seconds":{"one":"menos de 1 segundo","other":"menos de %{count} segundos"},"over_x_years":{"one":"mais de 1 ano","other":"mais de %{count} anos"},"x_days":{"one":"1 dia","other":"%{count} dias"},"x_minutes":{"one":"1 minuto","other":"%{count} minutos"},"x_months":{"one":"1 mês","other":"%{count} meses"},"x_seconds":{"one":"1 segundo","other":"%{count} segundos"}},"prompts":{"day":"Dia","hour":"Hora","minute":"Minuto","month":"Mês","second":"Segundo","year":"Ano"}},"errors":{"format":"%{attribute} %{message}","messages":{"cnpj_invalid":"O CNPJ digitado é invalido","cpf_invalid":"O CPF digitado é invalido","phone_invalid":"O Telefone digitado é inválido","email_invalid":"O Email digitado é inválido","accepted":"deve ser aceito","blank":"não pode ficar em branco","present":"deve ficar em branco","confirmation":"não está de acordo com a confirmação","empty":"não pode ficar vazio","equal_to":"deve ser igual a %{count}","even":"deve ser par","exclusion":"não está disponível","greater_than":"deve ser maior que %{count}","greater_than_or_equal_to":"deve ser maior ou igual a %{count}","inclusion":"não está incluído na lista","invalid":"não é válido","less_than":"deve ser menor que %{count}","less_than_or_equal_to":"deve ser menor ou igual a %{count}","not_a_number":"não é um número","not_an_integer":"não é um número inteiro","odd":"deve ser ímpar","record_invalid":"A validação falhou: %{errors}","restrict_dependent_destroy":{"one":"Não é possível excluir o registro pois existe um %{record} dependente","many":"Não é possível excluir o registro pois existem %{record} dependentes"},"taken":"já está em uso","too_long":"é muito longo (máximo: %{count} caracteres)","too_short":"é muito curto (mínimo: %{count} caracteres)","wrong_length":"não possui o tamanho esperado (%{count} caracteres)","already_confirmed":"já foi confirmado, por favor tente fazer login","confirmation_period_expired":"precisa ser confirmado em %{period}, solicite novamente por favor","expired":"expirou, por favor solicite um novo","not_found":"não encontrado","not_locked":"não estava bloqueado","not_saved":{"one":"1 erro impediu que %{resource} fosse salvo:","other":"%{count} erros impediram que %{resource} fosse salvo:"}},"template":{"body":"Por favor, verifique o(s) seguinte(s) campo(s):","header":{"one":"Não foi possível gravar %{model}: 1 erro","other":"Não foi possível gravar %{model}: %{count} erros."}}},"helpers":{"select":{"prompt":"Por favor selecione"},"submit":{"create":"Criar %{model}","submit":"Salvar %{model}","update":"Atualizar %{model}"},"actions":"Ações","links":{"back":"Voltar","cancel":"Cancelar","confirm":"Tem certeza disso?","destroy":"Apagar","new":"Criar","edit":"Editar"},"titles":{"edit":"Editar %{model}","save":"Salvar %{model}","new":"Criar %{model}","delete":"Apagar %{model}"}},"number":{"currency":{"format":{"delimiter":".","format":"%u %n","precision":2,"separator":",","significant":false,"strip_insignificant_zeros":false,"unit":"R$"}},"format":{"delimiter":".","precision":3,"separator":",","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":{"one":"bilhão","other":"bilhões"},"million":{"one":"milhão","other":"milhões"},"quadrillion":{"one":"quatrilhão","other":"quatrilhões"},"thousand":"mil","trillion":{"one":"trilhão","other":"trilhões"},"unit":""}},"format":{"delimiter":".","precision":2,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":"."}},"precision":{"format":{"delimiter":"."}}},"support":{"array":{"last_word_connector":" e ","two_words_connector":" e ","words_connector":", "}},"time":{"am":"","formats":{"default":"%a, %d de %B de %Y, %H:%M:%S","long":"%d de %B de %Y, %H:%M","short":"%d/%m/%Y %H:%M"},"pm":""},"mask":{"date":"11/11/1111","time":"00:00:00","cep":"00000-000","phone":"(00) 0000-0000","mobile":"(00) 00000-0000","cpf":"000.000.000-00","money":"#.##0,00","cnpj":"99.999.999/9999-99"},"attributes":{"created_at":"Criado em","updated_at":"Alterado em"},"activemodel":{"errors":{"format":"%{attribute} %{message}","messages":{"cnpj_invalid":"O CNPJ digitado é invalido","cpf_invalid":"O CPF digitado é invalido","phone_invalid":"O Telefone digitado é inválido","email_invalid":"O Email digitado é inválido","accepted":"deve ser aceito","blank":"não pode ficar em branco","present":"deve ficar em branco","confirmation":"não está de acordo com a confirmação","empty":"não pode ficar vazio","equal_to":"deve ser igual a %{count}","even":"deve ser par","exclusion":"não está disponível","greater_than":"deve ser maior que %{count}","greater_than_or_equal_to":"deve ser maior ou igual a %{count}","inclusion":"não está incluído na lista","invalid":"não é válido","less_than":"deve ser menor que %{count}","less_than_or_equal_to":"deve ser menor ou igual a %{count}","not_a_number":"não é um número","not_an_integer":"não é um número inteiro","odd":"deve ser ímpar","record_invalid":"A validação falhou: %{errors}","restrict_dependent_destroy":{"one":"Não é possível excluir o registro pois existe um %{record} dependente","many":"Não é possível excluir o registro pois existem %{record} dependentes"},"taken":"já está em uso","too_long":"é muito longo (máximo: %{count} caracteres)","too_short":"é muito curto (mínimo: %{count} caracteres)","wrong_length":"não possui o tamanho esperado (%{count} caracteres)"},"template":{"body":"Por favor, verifique o(s) seguinte(s) campo(s):","header":{"one":"Não foi possível gravar %{model}: 1 erro","other":"Não foi possível gravar %{model}: %{count} erros."}}}},"activerecord":{"errors":{"format":"%{attribute} %{message}","messages":{"cnpj_invalid":"O CNPJ digitado é invalido","cpf_invalid":"O CPF digitado é invalido","phone_invalid":"O Telefone digitado é inválido","email_invalid":"O Email digitado é inválido","accepted":"deve ser aceito","blank":"não pode ficar em branco","present":"deve ficar em branco","confirmation":"não está de acordo com a confirmação","empty":"não pode ficar vazio","equal_to":"deve ser igual a %{count}","even":"deve ser par","exclusion":"não está disponível","greater_than":"deve ser maior que %{count}","greater_than_or_equal_to":"deve ser maior ou igual a %{count}","inclusion":"não está incluído na lista","invalid":"não é válido","less_than":"deve ser menor que %{count}","less_than_or_equal_to":"deve ser menor ou igual a %{count}","not_a_number":"não é um número","not_an_integer":"não é um número inteiro","odd":"deve ser ímpar","record_invalid":"A validação falhou: %{errors}","restrict_dependent_destroy":{"one":"Não é possível excluir o registro pois existe um %{record} dependente","many":"Não é possível excluir o registro pois existem %{record} dependentes"},"taken":"já está em uso","too_long":"é muito longo (máximo: %{count} caracteres)","too_short":"é muito curto (mínimo: %{count} caracteres)","wrong_length":"não possui o tamanho esperado (%{count} caracteres)"},"template":{"body":"Por favor, verifique o(s) seguinte(s) campo(s):","header":{"one":"Não foi possível gravar %{model}: 1 erro","other":"Não foi possível gravar %{model}: %{count} erros."}}},"models":{"comment":{"one":"Comentário","other":"Comentários"},"group":{"one":"Grupo","other":"Grupos"},"problem":{"one":"Problema","other":"Problemas"},"project":{"one":"Projeto","other":"Projetos"}},"attributes":{"comment":{"content":"Comentário","created_at":"Data de criação"},"group":{"name":"Nome"},"problem":{"title":"Nome","desc":"Descrição"},"project":{"title":"Nome","description":"Descrição","progress_rate":"Progresso até o momento","consumed_rate":"Tempo consumido","started_at":"Data de início","dead_line_at":"Data final"}}},"devise":{"confirmations":{"confirmed":"Sua conta foi confirmada com sucesso. Você está logado.","send_instructions":"Dentro de minutos você receberá um e-mail com instruções para confirmar a sua conta.","send_paranoid_instructions":"Caso seu e-mail exista em nossa base, você receberá um e-mail em poucos minutos com instruções sobre como confirmar sua conta."},"failure":{"already_authenticated":"Você já está logado.","inactive":"A sua conta não foi ativada ainda.","invalid":"E-mail ou senha inválidos.","invalid_token":"Token de autenticação inválido.","locked":"Sua conta está bloqueada.","not_found_in_database":"Email ou senha inválida.","timeout":"A sua sessão expirou, por favor faça login novamente para continuar.","unauthenticated":"Você precisa registrar-se ou fazer login para continuar.","unconfirmed":"Você deve confirmar sua conta antes de continuar."},"mailer":{"confirmation_instructions":{"subject":"Instruções para confirmação de conta"},"reset_password_instructions":{"subject":"Instruções para reinicialização de senha"},"unlock_instructions":{"subject":"Instruções para desbloqueio de conta"}},"omniauth_callbacks":{"failure":"Não foi possível autorizar você através do %{kind} porque \"%{reason}\".","success":"Autorizado com sucesso pela conta %{kind}."},"passwords":{"no_token":"Você não pode acessar esta página sem que seja a partir de um e-mail de reinicialização de senha. Se você chegou aqui através de um e-mail de reinicialização de senha, por favor verifique se você usou a URL completa que foi informada.","send_instructions":"Você receberá um e-mail com instruções sobre como reinicializar sua senha em poucos minutos.","send_paranoid_instructions":"Caso seu e-mail esteja cadastrado, você receberá um link para recuperação de senha no seu e-mail em poucos minutos.","updated":"Sua senha foi alterada com sucesso. Você está logado agora.","updated_not_active":"Sua senha foi alterada com sucesso."},"registrations":{"destroyed":"Até mais! Sua conta foi cancelada com sucesso. Esperamos vê-lo novamente em breve.","signed_up":"Bem-vindo! Você se registrou com sucesso.","signed_up_but_inactive":"Você se cadastrou com sucesso. Porém, sua conta ainda não está ativada.","signed_up_but_locked":"Você se cadastrou com sucesso. Porém, sua conta está bloqueada.","signed_up_but_unconfirmed":"Uma mensagem com um link de confirmação foi enviado para o seu e-mail. Por favor, abra o link para ativar sua conta.","update_needs_confirmation":"Você atualizou sua conta com sucesso, mas nós precisamos verificar seu endereço de e-mail. Por favor, verifique seus e-mails e clique no link de confirmação para finalizar a criação da sua conta.","updated":"Você atualizou sua conta com sucesso."},"sessions":{"signed_in":"Autenticado com sucesso.","signed_out":"Logout feito com sucesso."},"unlocks":{"send_instructions":"Você receberá um e-mail em poucos minutos com instruções sobre como desbloquear sua conta.","send_paranoid_instructions":"Caso sua e-mail exista em nossa base, você receberá um e-mail em poucos minutos com instruções sobre como desbloqueá-la.","unlocked":"Sua conta foi desbloqueada com sucesso. Por favor, faça login para continuar."}},"simple_form":{"yes":"Sim","no":"Não","required":{"text":"obrigatório","mark":"*"},"error_notification":{"default_message":"Alguns erros foram encontrados, por favor verifique:"}},"comment":{"user":{"email":"Usuário"}},"message":{"well_done":"\u003Cb\u003EParabéns!!!\u003C/b\u003E","no_subject":"Não tem %{subject} cadastrado.","list_projects":"Lista completa dos projetos","list_problems":"Lista completa dos problemas"},"menu":{"dashboard":"Resumo","vote":"Vote aqui","projects":"Projetos","problems":"Problemas","groups":"Grupos","logout":"Sair","hello":"Olá, "}}};