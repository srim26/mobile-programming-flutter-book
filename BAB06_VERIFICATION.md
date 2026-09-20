\# Bab 6 Verification â€” REST API, JSON, dan Service



\## Status



\*\*CODE VERIFIED\*\*



Running project: \*\*Student Life Assistant\*\*

Tahap: \*\*Connected Application\*\*



Bab 6 mengembangkan aplikasi dari Stateful \& Persistent App menjadi aplikasi

yang dapat mengambil dan menampilkan data dari layanan eksternal melalui REST API.



\---



\## Implementasi



Fitur Bab 6 yang telah diintegrasikan:



\- HTTP client menggunakan package `http`

\- REST API menggunakan JSONPlaceholder

\- decoding JSON

\- pemetaan JSON ke model Dart `ExternalTodo`

\- pemisahan akses data melalui `ExternalTodoService`

\- asynchronous data fetching dengan `Future` dan `async/await`

\- loading state

\- success state

\- empty state

\- network/error state

\- retry/recovery

\- External Task Feed

\- integrasi dengan navigasi Student Life Assistant



Alur implementasi:



```text

REST API

&#x20;  â†“

HTTP Response

&#x20;  â†“

JSON

&#x20;  â†“

ExternalTodo

&#x20;  â†“

ExternalTodoService

&#x20;  â†“

State

&#x20;  â†“

UI

