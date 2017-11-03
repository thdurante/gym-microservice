# gym-microservice
Microserviço de academias desenvolvido na disciplina de Programação Back-end Avançada do curso de Especialização Web e Mobile - Full Stack.

## Alunos
O Projeto será executado pelos seguintes alunos:
1. Thiago Durante Pires ([@thdurante](https://github.com/thdurante))
2. Gabriel Louzada Rascovit ([@grascovit](https://github.com/grascovit))
3. Paulo de Oliveira Neto ([@pauloXtr3m](https://github.com/pauloXtr3m))

## Setup
Para configurar o projeto, siga os passos abaixo:
```
Na pasta raiz do projeto:
$ bundle install
$ rails db:create
$ rails db:migrate
```
Versões: `ruby: 2.4.2` e `rails: 5.1.4`

## Run
Para rodar o projeto, siga os passos abaixo:
```
Na pasta raiz do projeto:
$ rails s
```

O projeto, por padrão, roda na porta `:3000` e possui as seguintes rotas:
```
               Prefix Verb   URI Pattern                           Controller#Action
          enrollments GET    /enrollments(.:format)                enrollments#index
                      POST   /enrollments(.:format)                enrollments#create
       new_enrollment GET    /enrollments/new(.:format)            enrollments#new
      edit_enrollment GET    /enrollments/:id/edit(.:format)       enrollments#edit
           enrollment GET    /enrollments/:id(.:format)            enrollments#show
                      PATCH  /enrollments/:id(.:format)            enrollments#update
                      PUT    /enrollments/:id(.:format)            enrollments#update
                      DELETE /enrollments/:id(.:format)            enrollments#destroy
                 gyms GET    /gyms(.:format)                       gyms#index
                      POST   /gyms(.:format)                       gyms#create
              new_gym GET    /gyms/new(.:format)                   gyms#new
             edit_gym GET    /gyms/:id/edit(.:format)              gyms#edit
                  gym GET    /gyms/:id(.:format)                   gyms#show
                      PATCH  /gyms/:id(.:format)                   gyms#update
                      PUT    /gyms/:id(.:format)                   gyms#update
                      DELETE /gyms/:id(.:format)                   gyms#destroy
    training_sessions GET    /training_sessions(.:format)          training_sessions#index
                      POST   /training_sessions(.:format)          training_sessions#create
 new_training_session GET    /training_sessions/new(.:format)      training_sessions#new
edit_training_session GET    /training_sessions/:id/edit(.:format) training_sessions#edit
     training_session GET    /training_sessions/:id(.:format)      training_sessions#show
                      PATCH  /training_sessions/:id(.:format)      training_sessions#update
                      PUT    /training_sessions/:id(.:format)      training_sessions#update
                      DELETE /training_sessions/:id(.:format)      training_sessions#destroy

```

## Test
Para rodar os testes do projeto, siga os passos abaixo:
```
Na pasta raiz do projeto:
$ coverage=on bundle exec rspec
```
Em que `coverage=on` é opcional e indica se o relatório de cobertura de testes deve ou não ser gerado.
