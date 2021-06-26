# eventManager
Application for managing cultural events. Technologies such as: Java, Spring, Maven, Hibernate, Sql, Bootstrap




Serwis agregujący wydarzenia
Krótki opis systemu
Celem jest stworzenie serwisu, który umożliwi organizatorom wprowadzanie wydarzeń oraz
zbieraniem na nie zapisów. Zapisać może się każdy zarejestrowany użytkownik.
Serwis powinien być wyposażony także w wyszukiwarkę wydarzeń (z kilkoma kryteriami) oraz API,
które umożliwi prezentację tychże na innych stronach/serwisach.
Główne funkcje systemu
Rejestracja i logowanie użytkowników.
Tworzenie i edycja wydarzeń przez organizatorów (użytkownik ze specjalną rolą).
Komentowanie wydarzeń przez zalogowanych użytkowników.
Zapisywanie się na wydarzenia.
Wyszukiwarka wydarzeń.
API dla innych stron/serwisów, chcących prezentować wydarzenia.
Ogólne wytyczne
Budowa serwisu z wykorzystaniem Spring, JPA (Hibernate) oraz ThymeLeaf jako warstwy
widoku.
Wprowadzenie podziału w aplikacji na DAO, serwisy, kontrolery i umieszczanie odpowiedniej
logiki w każdej z nich.
Zabezpieczenie dostępu do aplikacji i funkcjonalności z wykorzystaniem Spring Security.
Funkcjonalności
Strona główna
- stworzenie pierwszego kontrolera oraz pliku widoku
- stworzenie plików z definicjami stylów/skryptów (bootstrap + ewentualne własne), które będą
załączane do każdej kolejnej strony (include)
- na stronie w sekcji górnej powinna znaleźć się nazwa serwisu oraz przyciski zaloguj i zarejestruj
Rejestracja użytkowników
- formularz rejestracji zawierający:
- login (email) – sprawdzenie pod kątem poprawności emaila,
- hasło – musi mieć przynajmniej 8 znaków, ale nie więcej niż 30,
2 | 4
- nazwę do wyświetlania – pole nie może być puste, ani zawierać samych białych znaków, a
maksymalna długość to 50 znaków.
- użytkownik o danym emailu może zarejestrować się tylko raz.
- z użytkownikiem powinny być powiązane role w systemie, które będą obejmować przynajmniej
dwa przypadki: organizator oraz zwykły użytkownik. Każda rejestrująca się osoba dostaje z
automatu rolę „zwykły użytkownik”.
- hasło jest trzymane w bazie danych w postaci uniemożliwiającej podejrzenie/odzyskanie.
Logowanie użytkownika
- formularz logowania zawierający login oraz hasło.
- logowanie z wykorzystaniem Spring Security (do stworzenia odpowiednia konfiguracja).
- po poprawnym zalogowaniu użytkownik powinien zostać przekierowany na stronę główną, gdzie
zamiast przycisków zaloguj/zarejestruj wyświetli się informacja typu: „Zalogowany jako: email”.
Dodawanie nowego wydarzenia
- wydarzenie musi zawierać przynajmniej:
- tytuł – pole nie może być puste, ani zawierać samych białych znaków,
- datę od/do – obowiązkowe (opcjonalne sprawdzanie czy data jest datą przyszłą),
- opis – minimum 20 znaków.
- wydarzenie musi być powiązane z użytkownikiem, który je dodaje.
Lista wydarzeń
- na stronie głównej, w centralnej części należy umieścić listę wszystkich aktualnych wydarzeń
- każdy element listy powinien zawierać:
- wyróżniony nagłówek z tytułem wydarzenia,
- datę od/do wydarzenia,
- pierwsze 50 znaków opisu.
- wydarzenia powinny być posortowane od najbliższego.
Wyszukiwarka wydarzeń
- w górnej części strony głównej należy dodać formularz zawierający:
- pole tekstowe na wpisanie frazy,
- opcjonalnie: pole z wyborem (dropdown): przyszłe, trwające i przyszłe, wszystkie,
- przycisk „szukaj”.
- wpisana fraza ma być wyszukiwana w tytule.
- wyniki wyszukiwania mają się znaleźć na osobnej stronie, w układzie takim samym jak na stronie
głównej. 
3 | 4
- na stronie z wynikami wyszukiwania powinien również występować formularz wyszukiwania jak na
stronie głównej, a jego pola powinny być ustawione zgodnie z aktualnie wybranymi kryteriami.
Widok szczegółowy wydarzenia
- osobna strona, na której będą widoczne wszystkie cechy wydarzenia: tytuł, daty od/do, pełny opis.
- na stronie głównej oraz na stronie z wynikami wyszukiwania należy podlinkować tytuł, aby po
kliknięciu przenosił na stronę konkretnego wydarzenia.
Dodawanie komentarzy do wydarzenia
- pod informacjami ogólnymi o wydarzeniu należy umieścić formularz dodawania komentarza.
- długość komentarza może mieć maksymalnie 500 znaków.
- komentarz może dodać tylko zalogowany użytkownik.
- kod formularzem należy wyświetlić wszystkie dodane dotychczas komentarze w kolejności od
najnowszego.
Zapisywanie się na wydarzenie
- na stronie wydarzenia należy dodać opcję (przycisk) zapisania się na nie, ale tylko dla
zalogowanych użytkowników.
- jeżeli aktualny użytkownik jest już zapisany, to zamiast przycisku widzi odpowiednią informację
oraz opcjonalnie przycisk do wypisania się z danego wydarzenia.
- obok informacji ogólnych o wydarzeniu należy umieścić listę wszystkich aktualnie zapisanych na
niego użytkowników.
API dla innych serwisów – listowanie wydarzeń
- API powinno spełniać zalecenia REST’owe.
- metoda powinna zwracać listę wszystkich przyszłych wydarzeń.
- opcjonalnie może dodatkowo umożliwiać filtrowanie zwracanych wydarzeń do zakresu dat.
Aplikacja wyświetlająca wydarzenia pobrane z API
- należy zbudować drugą aplikację (Spring + ThymeLeaf), która skonsumuje API wydarzeń i wyświetli
listę w jakimś swoim widoku
- opcjonalnie: dodanie w aplikacji możliwości filtrowania wydarzeń do wybranego zakresu dat, z
wykorzystaniem filtrowania po stronie API 
4 | 4
Zadania dodatkowe i rozszerzenia
Możliwość dodawania obrazka do wydarzenia
- dodanie możliwości dodawania pliku graficznego do formularz dodawania/edycji wydarzenia.
- zapisywanie wgrywanego pliku na dysku lub w jakimś zewnętrznym serwisie typu cloud storage
poprzez API lub zrobienie samemu takiego serwisu z własnym API (wersje dla zaawansowanych)
- serwowanie pliku na potrzeby wyświetlenia w szczegółach wydarzenia (plus ewentualnie w innych
miejscach).
Edycja wydarzenia
- dodatkowa strona, która umożliwi edycję stworzonego wydarzenia.
- edytować wydarzenie może tylko jego właściciel lub administrator serwisu (nowa rola dla
użytkownika).
- opcja edycji powinna się pojawić przynajmniej na stronie szczegółów zamówienia.
Moje wydarzenia
- sekcja dla zalogowanego użytkownika, gdzie będzie widział wszystkie wydarzenia, zarówno te, w
których brał udział, jak i te, których jest właścicielem.
- te ostatnie powinny mieć możliwość przejścia na edycję (mechanizm we wcześniejszym zadaniu).
- lista powinna umożliwiać filtrowanie:
- rola:
- wszystkie
- organizator
- uczestnik
- kiedy:
- przyszłe
- trwające i przyszłe
- przeszłe
- wszystkie
- data (opcjonalnie):
- pole od
- pole do
Dodatkowe wymagania
- należy zadbać o estetyczny i funkcjonalny sposób prezentowania danych
- dane pobierane od użytkowników powinny być wstępnie walidowane
