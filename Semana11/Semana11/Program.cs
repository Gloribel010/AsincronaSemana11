// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

using Semana11;

    using (var contextdb = new ContextDB())
    {
        contextdb.Database.EnsureCreated();
        bool Continuar = true;

        while (Continuar)
        {
            Student estudiante = new Student();

            Console.WriteLine("Ingresar Nombre:");
            estudiante.Nombres = Console.ReadLine();

            Console.WriteLine("Ingresar Apellido:");
            estudiante.Apellidos = Console.ReadLine();

            Console.WriteLine("Ingresar Sexo:");
            estudiante.Sexo = Console.ReadLine();

            Console.WriteLine("Ingresar Edad:");
            estudiante.Edad = Convert.ToInt32(Console.ReadLine());

            contextdb.Add(estudiante);
            contextdb.SaveChanges();

            Console.WriteLine("Se agrego un nuevo estudiante");

            Console.WriteLine("¿Continuar agregando estudiantes?(S/N): ");
            string Si = Console.ReadLine();
            Continuar = Si.ToLower() == "s";
        }
        Console.WriteLine("Lista de estudiantes:");
        foreach (var s in contextdb.Estudiante)
        {
            Console.WriteLine($"Nombre:{s.Nombres}, Apellido: {s.Apellidos}, Sexo: {s.Sexo}, Edad: {s.Edad}");
        }
    }
