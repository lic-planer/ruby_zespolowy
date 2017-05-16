# Aleksandra Onych, Julian Podleśny, Arkadiusz Półgęsek (egzamin)
| Ruby | Rails | Baza danych | Framework | Gemy |
| ------ | ------ | ------ | ------ | ------ |
| 2.3.3 | 5.0.2 | SQLite, PostgreSQL | Bootstrap | simple_form, ransack, chartkick, kaminari, ratyrate, youtube_rails |

### [ ] [Link do aplikacji](https://shrouded-ocean-49748.herokuapp.com/) 

# Temat: Filmy
Aplikacja zawiera informację o filmach (tytuł, kraj produkcji, rok premiery, plakat, reżyser, gatunek, trailer) oraz reżyserach (imię, nazwisko, rok urodzenia). Użytkownik po porzednim zalogowaniu się i wejściu w zakładkę 'Filmy', zobaczy plakaty wraz z ocenami filmów znajdujących się w bazie. Po kliknięciu w plakat można dany film przeglądać. W trybie edycji należy pamiętać, że link do plakatu musi zaczynać się na 'http' lub 'https' oraz kończyć na '.jpg' bądź '.png', a link do trailera musi pochodzić z serwisu YouTube. Każdy film można usuwać oraz oceniać. Na stronie w zakładce 'Filmy' znajduje się wyszukiwarka, dzięki której można znaleźć filmy po tytule (np. wpisując "harry potter" pojawią się dwa filmy). Istnieje także możliwość sortowania filmów po gatunkach. Aby dodać film należy kliknąć w przycisk 'Dodaj film +'. W zakładce 'Reżyserzy' można przeglądać, edytować, usuwać, a także dodawać nowych reżyserów.  Po kliknięciu na nazwę kolumny tabeli, rekordy w niej zawarte zostaną posortowane. Na stronie znajduje się wyszukiwarka, dzięki której można znaleźć reżyserów po imieniu lub nazwisku. W zakładce 'Diagram' wyświetla się diagram przedstawiający ilość filmów wyprodukowanych w danym kraju opierając się na danych zawartych w bazie. Użytkownik może również edytować swoje konto - zmienić email lub hasło. Baza opiera się na trzech modelach - movie, type i director, które zostały połączone ze sobą nastepująco:
type ------< movie >------ director.

# Gemy
- simple_form - proste dodawanie formularzy
- ransack - wyszukiwanie po napisach i sortowanie danych w tabeli
- chartkick - tworzenie diagramów
- kaminari - paginacja stron
- ratyrate - ocenianie filmów
- youtube_rails - parsowanie adresów URL z serwisu YouTube oraz generowanie kodu HTML
