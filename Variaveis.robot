*** Variables ***

&{inicio}
...               btn_signin=xpath://a[@class='login']
...               email=id:email_create
...               btn_criar=xpath://button[@class="btn btn-default button button-medium exclusive"]
...               sra=id:id_gender2

&{formulario}
...               nome=id:customer_firstname
...               sobrenome=id:customer_lastname
...               senha=id:passwd
...               dia=id:days
...               mes=id:months
...               ano=id:years
...               endereço=id:address1
...               cidade=id:city
...               estado=id:id_state
...               codigo_postal=id:postcode
...               pais=id:id_country
...               celular=id:phone_mobile

${btn_fim}=       id:submitAccount             

${mensagem}=      xpath://*[@class='info-account']
${msg}=           Welcome to your account. Here you can manage all of your personal information and orders.