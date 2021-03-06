
import java.sql.*;

public class SQLConnector {
	
		public SQLConnector() { }

		
		public UserBean getUser(String login, String password) {
			
			   UserBean user = null;
			   
			   String rqString = "Select * from User where login='"+login+"' and password='"+password+"';";
			   ResultSet res = doRequest(rqString);
			   int i = 0;
			   try {
				   while(res.next()) {
					   if(i==0) {
						   user = new UserBean();
						   user.setLogin(res.getString("login"));
						   user.setPassword(res.getString("password"));
						   user.setNom(res.getString("nom"));
						   user.setPrenom(res.getString("prenom"));
						   user.setRang(res.getString("role"));
					   }
					   else {
						   i++;
						   arret("Plus d'un utilisateur ayant le meme login ???");
					   }

				   }
				} 
			   catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			   
			   return user;
		   }
		   
		public void createUser(String login, String password, String nom, String prenom) {
			
			   Connection con = connect();
			   
			    try {
			    	Statement stmt = con.createStatement();
			    	String rqString = "INSERT INTO User (role,login,password,nom,prenom) VALUES ('basic_user','"+
							   login+"','"+password+"','"+prenom+"','"+nom+"')";
					stmt.executeUpdate(rqString);
				} 
			    catch (SQLException e) {
					e.printStackTrace();
				}
		   }
		   
		   
		   public  ResultSet doRequest(String sql_string) {
			   ResultSet results = null;
			   Connection con = connect();
			   try {
				   Statement stmt = con.createStatement();
				   results = stmt.executeQuery(sql_string);
				} catch (SQLException e) {
				   e.printStackTrace();
				}
			   
			   return results;
		   }
		   
		 
		   public Connection connect() {
			   
			   Connection con = null;
			   
			   try {
				   Class.forName("com.mysql.cj.jdbc.Driver");
			   }
			   catch (ClassNotFoundException e) {
			         arret("Impossible de charger le pilote jdbc");
			   }

			   affiche("connexion a la base de donn??es");
			   
			   try {
			         String DBurl = "jdbc:mysql://localhost/Jee_database";
			         con = DriverManager.getConnection(DBurl,"ProjetWeb2","ProjetWeb2");
			         affiche("connexion r??ussie");
			   } 
			   catch (SQLException e) {
			         arret("Connection ?? la base de donn??es impossible");
			   }
			   
			   return con;
		   }
		   
		   
		   
		   private static void affiche(String message) {
			      System.out.println(message);
		   }

		   
		   
		   private static void arret(String message) {
			      System.err.println(message);
			      System.exit(99);
		   }
}
