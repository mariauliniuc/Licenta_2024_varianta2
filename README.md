 <h1>Magazin Online de Produse Electronice Destinat Persoanelor Juridice</h1>
    <p>Acest repository conține codul pentru lucrarea mea de licență: un magazin online pentru produse electronice. Aplicația este construită folosind ASP.NET și SQL Server Management Studio și este împărțită în două secțiuni principale: Administrare și Utilizator.</p>
    <p>Pentru fiecare sectiune am create doua directoare separate, cu numele fiecaruia:</p>
<div style="position: relative; display: inline-block;">
    <button style="background-color: #4CAF50; color: white; padding: 16px; font-size: 16px; border: none; cursor: pointer;">
        Direcorul Utilizator contine urmatoarele pagini:
    </button>
    <ul style="display: none; position: absolute; background-color: #f9f9f9; min-width: 160px; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1; list-style-type: none; padding: 0;">
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Principal.Master</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Logare.aspx</a>
        </li>
      <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Inregistrare.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">FrmPrincipal.aspx</a>
        </li>
       <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Telefoane.aspx</a>
        </li>
       <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Laptopuri.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Diverse.aspx</a>
        </li>
       <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">CosDeCumparaturi.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Cont.aspx</a>
        </li>
    </ul>
</div>
<div style="position: relative; display: inline-block;">
    <button style="background-color: #4CAF50; color: white; padding: 16px; font-size: 16px; border: none; cursor: pointer;">
        Direcorul Administrare contine urmatoarele pagini:
    </button>
    <ul style="display: none; position: absolute; background-color: #f9f9f9; min-width: 160px; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1; list-style-type: none; padding: 0;">
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">Admin.Master</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">LogareAdmin.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">dashboard.aspx</a>
        </li>
       <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">add.aspx</a>
        </li>
       <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">del.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">clienti.aspx</a>
        </li>
        <li style="color: black; padding: 12px 16px; text-decoration: none; display: block;">
            <a href="#" style="color: black; text-decoration: none;">comenzi.aspx</a>
        </li>
    </ul>
</div>
<p>Pentru a putea rula aplicatia trebuie sa aveti instalate urmatoarele medii de programare:</p>
<ul>
  <li>Microsoft Visual Studio, de preferat 2022</li>
  <li>SQL Server Management Studio</li>
</ul>
<p>Dupa instalarea acestor medii de programare si gestionare a bazelor de date, se importa proiectul in mediul Visual Studio si se poate incepe la alegere cu rularea oricarui dintre directoarele Administrare sau Utilizator</p>
<p>In cazul in care ati ales directorul Utilizator, acestia sunt urmatorii pasi de parcurgere:</p>
<ul>
  <li>Deschiderea paginii Logare.aspx si introducerea credentialelor pentru autentificare. In cazul in care nu exista, se acceseaza pagina Inregistrare.aspx pentru crearea acestora.</li>
  <li>Dupa inregistrare sau autetificare veti fi redirectionat catre pagina FrmPrincipal.aspx.</li>
  <li>De acolo puteti naviga pe urmatoarele pagini: Telefoane.aspx, Laptopuri.aspx sau Diverse.aspx si adauga produse in cosul de cumparaturi.</li>
  <li>Din pagina CosDeCumparaturi.aspx se pot vizualiza produsele adaugate in cos si se poate plasa comanda prin actionarea butonului Cumparare.</li>
  <li>Din pagina Cont.aspx se pot vizualiza datele introduse in pagina de inregistrare si va puteti deconecta.</li>
</ul>
<p>In cazul in care ati ales directorul Administrare, acestia sunt urmatorii pasi de parcurgere:</p>
<p>Accesati pagina LogareAdmin.aspx, care se poate accesa si in urma actionarii butonului Administrare din pagina Logare.aspx, apoi introduceti credendiatele de autentificare</p>
<p>Urmatoare pagina in care veti fi redirectionat este dashboard.aspx, apoi puteti naviga prin paginile add.aspx, del.aspx, comenzi.aspx sau clienti.aspx, de unde se pot desfasura actiuni asupra produselor precum adaugare, vizualizare si stergere, precum si vizualizarea comenzilor plasate sau a clientilor inregistrati la ora actuala. </p>



