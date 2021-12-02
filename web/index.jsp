<%-- 
    Document   : index
    Created on : Nov 17, 2021, 12:20:38 AM
    Author     : André
--%>
<%@page import="so4308554.JsonReader"%>

<%@page import="java.io.BufferedReader, java.io.IOException, java.io.InputStream, java.io.InputStreamReader, java.io.Reader, java.net.URL, java.nio.charset.Charset, java.util.ArrayList, java.util.List, org.json.JSONArray, org.json.JSONException, org.json.JSONObject" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title>Curriculo-Web</title>
        <link rel="shortcut icon" href="logoroxoclaro.ico">
        <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="static/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="static/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="static/boxicons/css/animations.css" rel="stylesheet">
        <link href="static/styles.css" rel="stylesheet">
    </head>
    <body>
        <code>
            <%
                JSONObject json = so4308554.JsonReader.readJsonFromUrl("https://api.github.com/repos/andre-vg/CAIXA_ANDRE/languages");
            System.out.println(json.toString());
            
            int num_lang = json.length();
            
            String[] nomes = json.names().toString().replace("[", "").replace("]", "").replace("\"", "").split(",");            
            
            int aux2 = 0;

            String[] valor = null;                   
        
            %>
        </code>
        
        <code>
            <%
                JSONObject json2 = so4308554.JsonReader.readJsonFromUrl("https://api.github.com/repos/andre-vg/NetbeansCurriculo/languages");
            
            int num_lang2 = json2.length();
            
            String[] nomes2 = json2.names().toString().replace("[", "").replace("]", "").replace("\"", "").split(",");            
            
            int aux = 0;

            String[] valor2 = null;;
   
            %>
        </code>
        
        <header id="header" class="d-flex flex-column justify-content-center">

            <nav id="navbar" class="navbar nav-menu">
              <ul>
                <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
                <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Sobre</span></a></li>
                <li><a href="#resume" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Resumo</span></a></li>
                <li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Linguagens</span></a></li>
                <li><a href="#projetos" class="nav-link scrollto"><i class="bi bi-code-slash"></i> <span>Projetos</span></a></li>
                <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contato</span></a></li>
              </ul>
            </nav>
        </header>

        <section id="hero" class="d-flex flex-column justify-content-center">
            <div class="container">
              <div class="row">
                <div class="col">
                  <h1 style="color: #8600b3">André Gonçalves</h1>
                      <p>Currículo WEB</p>
                      <div class="social">
                        <a href="https://twitter.com/dedez00" class="twitter"><i class="bx bxl-twitter"></i></a>
                        <a href="https://twitch.tv/dedz_1" class="twitch"><i class="bx bxl-twitch"></i></a>
                        <a href="https://instagram.com/andre.vg_" class="instagram"><i class="bx bxl-instagram"></i></a>
                        <a href="https://github.com/andre-vg" class="github"><i class="bx bxl-github"></i></a>
                        <a href="https://www.linkedin.com/in/andré-gonçalves-a74535163/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                      </div>
                </div>
                <div class="col">
                  <div class="imagemindex">
                      <img id="logo" src="static/logoroxoclaro.jpg" alt="" style="box-shadow: 10px 10px 5px #aaaaaa;">
                  </div>
                </div>
              </div>
            </div>
        </section>

            <section id="about" class="about">
              <div class="container">
                <div class="section-title">
                  <h2>Sobre</h2>
                  <p>Olá, meu nome é André e atualmente sou estudante do 4° Semestre de Ciência da Computação no Centro Educacional CEUB e procuro novas oportunidades na área da
                      Tecnologia da Informação.</p>
                </div>
                <div class="row">
                  <div class="col-lg-4">
                    <img src="static/perfilRoxa.png" class="img-fluid" alt="" style="border-radius: 1000px; box-shadow: 10px 10px 5px #aaaaaa;">
                  </div>
                  <div class="col-lg-8 pt-4 pt-lg-0 content">
                    <h3>Informações Pessoais:</h3>
                    <br>
                    <div class="row">
                      <div class="col-lg-6">
                        <ul>
                          <li><i class="bi bi-arrow-right"></i> <strong>Data de Nascimento:</strong> <span>24/11/2000</span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>Lattes:</strong> <span> <a href="https://url.gratis/0nD6Xz">Lattes</a></span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>N° Celular:</strong> <span>+55 (61) 98283-0376</span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>Cidade:</strong> <span>Brasília - DF</span></li>
                        </ul>
                      </div>
                      <div class="col-lg-6">
                        <ul>
                          <li><i class="bi bi-arrow-right"></i> <strong>Idade:</strong> <span>21</span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>Formação:</strong> <span>Ensino Superior em andamento</span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>Email:</strong> <span>avictorg@gmail.com</span></li>
                          <li><i class="bi bi-arrow-right"></i> <strong>Estado Civil:</strong> <span>Solteiro</span></li>
                        </ul>
                      </div>
                    </div>
                    <p>
                      Todas as informações estão corretas e foram atualizadas no dia: <span id="dataJS"></span> 
                    </p>
                    
                  </div>
                </div>
              </div>
                    <script>
                        const d = new Date();
                        const dia = d.getDate();
                        const mes = d.getMonth()+1;
                        const ano = d.getFullYear();

                        hoje = dia + '/' + mes + '/' + ano;
                        document.getElementById("dataJS").innerHTML = hoje;
                    </script>
            </section>

        <section id="resume" class="resume">
          <div class="container">
            <div class="section-title">
              <h2>Currículo</h2>
              <p>Abaixo consta um pequeno resumo da minha formação e da minha experiência profissional.</p>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <img id="salles" class="instituicoes" src="static/salles.png" alt="" >
                  <br>
                <div class="resume-item pb-0">
                    <h4>Ensino Médio</h4>
                  <h5>2015 - 2017</h5>
                  <p><em>Ensino Médio (2º grau). Colégio Madre Carmen Salles, CMCS, Brasil.</em></p>
                  <ul>
                    <li>Completo</li>
                    <li>Todas as etapas do PAS realizadas</li>
                  </ul>
                </div>

                <img class="instituicoes" src="static/unb.png" alt="">
                <div class="resume-item">
                  <h4>Engenharia Eletrônica</h4>
                  <h5>2018 - 2020</h5>
                  <p><em>Graduação Interrompida no 4° semestre.</em></p>
                    <p>Durante o período realização de atividades extra-classes como:</p>
                    <ul>
                        <li>Monitoria</li>
                        <li>UnB nas escolas</li>
                    </ul>
                </div>
              </div>
              <div class="col-lg-6">
                <img id="ceub" class="instituicoes" src="static/logoceub.png" alt="">
                <div class="resume-item">
                  <h4>Ciência da Computação</h4>
                  <h5>2020 - Atualmente</h5>
                  <p><em>Atualmente cursando CC no CEUB, 4° semestre letivo e expectativa de témino em 2023.</em></p>
                    <br>
                    <br>
                </div>
                <div class="resume-item">
                    <h3>Experiência Profissional</h3>
                  <img class="instituicoes" src="static/embrapa.png" alt="">
                  <h5>2021 - Atualmente</h5>
                  <p><em>Atuando como estagiário de desenvolvimento, auxiliando nas seguintes áreas:</em></p>
                  <ul>
                    <li>Apoio à gestão de conteúdos de sistemas gestão de dados e informações de recursos genéticos;</li>
                    <li>Apoio a atividades de documentação de sistema em ambiente Wiki e Sistema da Qualidade (SQ);</li>
                    <li>Apoio no incremento, atualização, revisão e padronização de tabela de bancos de dados;</li>
                    <li>Apoio na revisão de dados e informações de planilhas de documentação de acervos de materiais biológicos e migração assistida para base de dados especializada em padrão SQL;</li>
                    <li>Apoio às atividades de desenvolvimento e manutenção de sistemas componentes da Plataforma Alelo Recursos Genéticos de gestão de dados e informações das vertentes animal, vegetal e de microrganismos;</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section id="services" class="services">
          <div class="container">
            <div class="section-title">
              <h2>Linguagens</h2>
              <p>Abaixo algumas linguagens que já trabalhei ou tenho conhecimento pleno sobre:</p>
            </div>
            <div class="slide-img">
              <img src="static/linguagens/C.png" class="slide1">
              <img src="static/linguagens/css3.png" class="slide2">
              <img src="static/linguagens/HTML5.png" class="slide3">
              <img src="static/linguagens/js.png" class="slide4">
              <img src="static/linguagens/java.png" class="slide5">
              <img src="static/linguagens/MySQL2.png" class="slide6">
              <img src="static/linguagens/python.png" class="slide7">
            </div>
          </div>
        </section>

        <section id="projetos" class="projetos">
        <div class="container">
          <div class="section-title">
            <h2>Projetos</h2>
            <p>Alguns projetos que fiz para testagem de conhecimentos e trabalhos de disciplina.</p>
          </div>
          <div class="row">
            <div class="col-sm-2 col-md-4"> 
                <h3 class="portfolio-projects--title">Starbucks</h3>
                <h5 class="portfolio-projects--desc">Software de caixa registradora</h5>
            </div>
            <div class="col-sm-2 col-md-4 text-center">
                <div class="polaroid">
                    <a href="https://github.com/andre-vg/CAIXA_ANDRE"><img class="portfolio-projects--image" src="static/starbuckslogin.png"></a>
                </div>
            </div>
            <div class="col-sm-2 col-md-4" id="chart">               
                <script charset="utf-8" src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.js"></script>
                    <script type="text/javascript">
                        var chart = document.getElementById("chart");
                        var myChart = echarts.init(chart);
                        var option;
                        option = {
                            tooltip: {
                              trigger: 'item'
                            },
                            series: [
                              {
                                type: 'pie',
                                radius: '50%',
                                data: [
                                    { value: <%= json.get("CSS") %>, name: '<%= nomes[0] %>' },
                                  { value: <%= json.get("JavaScript") %>, name: '<%= nomes[1] %>' },
                                  { value: <%= json.get("HTML") %>, name: '<%= nomes[2] %>' },
                                  { value: <%= json.get("Python") %>, name: '<%= nomes[3] %>' }
                                ],
                                label: {
                                    position: 'outer',
                                    alignTo: 'labelLine',
                                    bleedMargin: 5
                                  },
                                emphasis: {
                                  itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                  }
                                }
                              }
                            ]
                          };
                          myChart.setOption(option, true);
                    </script>
            </div>
          </div>
                                <br><br>           
          <div class="row">
            <div class="col-sm-2 col-md-4"> 
                <h3 class="portfolio-projects--title">Currículo</h3>
                <h5 class="portfolio-projects--desc">Projeto do Curriculo Web</h5>
            </div>
            <div class="col-sm-2 col-md-4 text-center">
                <div class="polaroid">
                    <a href="https://github.com/andre-vg/NetbeansCurriculo"><img class="portfolio-projects--image" src="static/logoroxoclaro.jpg" ></a>
                </div>
            </div>
            <div class="col-sm-2 col-md-4" id="chart2">               
                <script charset="utf-8" src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.js"></script>
                    <script type="text/javascript">
                        var chart2 = document.getElementById("chart2");
                        var myChart2 = echarts.init(chart2);
                        var option;
                        option = {
                            tooltip: {
                              trigger: 'item'
                            },
                            series: [
                              {
                                type: 'pie',
                                radius: '50%',
                                data: [
                                    { value: <%= json2.get("Java") %>, name: '<%= nomes2[0] %>' },
                                  { value: <%= json2.get("CSS") %>, name: '<%= nomes2[1] %>' },
                                  { value: <%= json2.get("JavaScript") %>, name: '<%= nomes2[2] %>' },
                                  { value: <%= json2.get("HTML") %>, name: '<%= nomes2[3] %>' }
                                ],
                                label: {
                                    position: 'outer',
                                    alignTo: 'labelLine',
                                    bleedMargin: 5
                                  },
                                emphasis: {
                                  itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                  }
                                }
                              }
                            ]
                          };
                          myChart2.setOption(option, true);
                    </script>
            </div>
          </div>
                                
        </div>
      </section>

      <section id="contact" class="contact">
        <div class="container">
          <div class="section-title">
            <h2>Contato</h2>
            <p>Gostou do que viu? Sinta-se livre para me mandar um email:</p>
          </div>
          <form action="https://formsubmit.co/cea2303be57fadb999b68b0a149f9b8d" method="POST">
            <input type="hidden" name="_subject" value="Novo contato!!">
            <div class="row">
              <div class="col">
                <input type="name" name="name" placeholder="Seu nome" required>
              </div>
              <div class="col">
                <input type="email" name="email" class="email" placeholder="Seu email" required>
              </div>
            </div>
            <br>
            <div class="row row-cols-auto">
              <input type="hidden" name="_next" value="https://andre-vg.github.io/Curriculo-Web/templates/index.html#contact">
              <textarea type="text" name="message" class="message" placeholder="Escreva sua mensagem." style="height:200px; width: 50%; margin-left: 25%; border-color: #5a257f;"></textarea>
            </div>
            <br>
            <div class="row row-cols-auto">
              <div class="alinharCentro">
              <button type="submit" class="btn btn-outline-dark">Enviar</button>
              </div>
            </div>
          </form>
        </div>
      </section>

        <footer id="footer">
            <div class="container">
              <h3>André Gonçalves</h3>
              <p>Mar calmo nunca fez bom marinheiro...</p>
              <div class="social">
                <a href="https://twitter.com/dedez00" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="https://twitch.tv/dedz_1" class="twitch"><i class="bx bxl-twitch"></i></a>
                <a href="https://instagram.com/andre.vg_" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="https://github.com/andre-vg" class="github"><i class="bx bxl-github"></i></a>
                <a href="https://www.linkedin.com/in/andré-gonçalves-a74535163/" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
            </div>
        </footer>
    </body>
</html>
