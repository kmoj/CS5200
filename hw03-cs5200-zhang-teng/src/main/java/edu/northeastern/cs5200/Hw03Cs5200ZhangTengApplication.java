package edu.northeastern.cs5200;

import java.time.LocalDate;
import java.util.List;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import edu.northeastern.cs5200.dao.DeveloperDao;
import edu.northeastern.cs5200.dao.PageDao;
import edu.northeastern.cs5200.dao.RoleDao;
import edu.northeastern.cs5200.dao.WebsiteDao;
import edu.northeastern.cs5200.dao.WidgetDao;
import edu.northeastern.cs5200.model.Developer;
import edu.northeastern.cs5200.model.Page;
import edu.northeastern.cs5200.model.Role;
import edu.northeastern.cs5200.model.Website;
import edu.northeastern.cs5200.model.Widget;

@SpringBootApplication
public class Hw03Cs5200ZhangTengApplication {

	public static void main(String[] args) {
		SpringApplication.run(Hw03Cs5200ZhangTengApplication.class, args);

		int insertDeveloperRresult = 0;
		insertDeveloperRresult = insertDevelopers();
		System.out.println("inserted " + insertDeveloperRresult + " developers");
		
		int insertWebsitesRresult = 0;
		insertWebsitesRresult = insertWebsites();
		System.out.println("inserted " + insertWebsitesRresult + " websites");

		int insertPagesRresult = 0;
		insertPagesRresult = insertPages();
		System.out.println("inserted " + insertPagesRresult + " pages");
		
		int insertWidgetsRresult = 0;
		insertWidgetsRresult = insertWidgets();
		System.out.println("inserted " + insertWidgetsRresult + " widgets");
		
//		UNCOMMENT THE LINES BELOW TO TEST THE IMPLEMENTS OF UPDATES AND DELETES
//		
//		int update1Result = 0;
//		update1Result = implementUpdate1();
//		System.out.println("updated " + update1Result + " widgets");
//		
//		int update2Result = 0;
//		update2Result = implementUpdate2();
//		System.out.println("updated " + update2Result + " pages");
//		
//		int update3Result = 0;
//		update3Result = implementUpdate3();
//		System.out.println("updated " + update3Result + " website roles");
//	
//		int implementDelete1Result = 0;
//		implementDelete1Result = implementDelete1();
//		System.out.println("deleted " + implementDelete1Result + " widgets");
//		
//		int implementDelete2Result = 0;
//		implementDelete2Result = implementDelete2();
//		System.out.println("deleted " + implementDelete2Result + " pages");
//		
//		int implementDelete3Result = 0;
//		implementDelete3Result = implementDelete3();
//		System.out.println("deleted " + implementDelete3Result + " websites");

		
	}

	public static int insertDevelopers() {
		int result = 0;
		LocalDate date = LocalDate.now();
		DeveloperDao dao = DeveloperDao.getInstance();

		Developer alice = new Developer(12, "Alice", "Wonder", "alice", "alice", "alice@wonder.com", date.toString(),
				"4321rewq");
		Developer bob = new Developer(23, "Bob", "Marley", "bob", "bob", "bob@marley.com", date.toString(), "5432trew");
		Developer charlie = new Developer(34, "Charles", "Garcia", "charlie", "charlie", "chuch@garcia.com",
				date.toString(), "6543ytre");
		Developer dan = new Developer(45, "Dan", "Martin", "dan", "dan", "dan@martin.com", date.toString(), "7654fda");
		Developer ed = new Developer(56, "Ed", "Karaz", "ed", "ed", "ed@kar.com", date.toString(), "5678dfgh");

		result = dao.createDeveloper(alice);
		result = result + dao.createDeveloper(bob);
		result = result + dao.createDeveloper(charlie);
		result = result + dao.createDeveloper(dan);
		result = result + dao.createDeveloper(ed);

		return result;
	}

	public static int insertWebsites() {

		final int ADMIN = 1;
		final int EDITOR = 2;
		final int OWNER = 3;
		final int REVIEWER = 4;
		final int WRITER = 5;
		int websiteResult = 0;
		int roleResult = 0;
		LocalDate date = LocalDate.now();
		WebsiteDao websiteDao = WebsiteDao.getInstance();
		RoleDao roleDao = RoleDao.getInstance();

		Website Facebook = new Website(123, "Facebook", "an online social media and social networking service",
				date.toString(), date.toString(), 1234234, 12);
		Website Twitter = new Website(234, "Twitter", "an online news and social networking service", date.toString(),
				date.toString(), 4321543, 23);
		Website Wikipedia = new Website(345, "Wikipedia", "a free online encyclopedia", date.toString(),
				date.toString(), 3456654, 34);
		Website CNN = new Website(456, "CNN", "an American basic cable and satellite television news channel",
				date.toString(), date.toString(), 6543345, 12);
		Website CNET = new Website(567, "CNET",
				"an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics",
				date.toString(), date.toString(), 5433455, 23);
		Website Gizmodo = new Website(678, "Gizmodo",
				"a design, technology, science and science fiction website that also writes articles on politics",
				date.toString(), date.toString(), 4322345, 34);

		websiteResult = websiteDao.createWebsiteForDeveloper(Facebook.getDeveloperId(), Facebook);
		websiteResult = websiteResult + websiteDao.createWebsiteForDeveloper(Twitter.getDeveloperId(), Twitter);
		websiteResult = websiteResult + websiteDao.createWebsiteForDeveloper(Wikipedia.getDeveloperId(), Wikipedia);
		websiteResult = websiteResult + websiteDao.createWebsiteForDeveloper(CNN.getDeveloperId(), CNN);
		websiteResult = websiteResult + websiteDao.createWebsiteForDeveloper(CNET.getDeveloperId(), CNET);
		websiteResult = websiteResult + websiteDao.createWebsiteForDeveloper(Gizmodo.getDeveloperId(), Gizmodo);

		roleResult = roleDao.assignWebsiteRole(12, 123, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 123, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(34, 123, ADMIN);
		
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 234, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(34, 234, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(12, 234, ADMIN);

		roleResult = roleDao.assignWebsiteRole(34, 345, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(12, 345, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 345, ADMIN);
		
		roleResult = roleResult + roleDao.assignWebsiteRole(12, 456, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 456, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(34, 456, ADMIN);
		
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 567, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(34, 567, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(12, 567, ADMIN);
		
		roleResult = roleResult + roleDao.assignWebsiteRole(34, 678, OWNER);
		roleResult = roleResult + roleDao.assignWebsiteRole(12, 678, EDITOR);
		roleResult = roleResult + roleDao.assignWebsiteRole(23, 678, ADMIN);
		
		return websiteResult;
	}

	public static int insertPages() {
		
		final int ADMIN = 1;
		final int EDITOR = 2;
		final int OWNER = 3;
		final int REVIEWER = 4;
		final int WRITER = 5;

		int pageResult = 0;
		int roleResult = 0;
		LocalDate date = LocalDate.now();
		PageDao dao = PageDao.getInstance();
		RoleDao roleDao = RoleDao.getInstance();

		Page Home = new Page(123, "Home", "Landing page", date.toString(), date.toString(), 123434, 567);
		Page About = new Page(234, "About", "Website description", date.toString(), date.toString(), 234545, 678);
		Page Contact = new Page(345, "Contact", "Addresses, phones, and contact info", date.toString(), date.toString(),
				345656, 345);
		Page Preferences = new Page(456, "Preferences", "Where users can configure their preferences", date.toString(),
				date.toString(), 456776, 456);
		Page Profile = new Page(567, "Profile", "Users can configure their personal information", date.toString(),
				date.toString(), 567878, 567);

		pageResult = dao.createPageForWebsite(Home.getWebsiteId(), Home);
		pageResult = pageResult + dao.createPageForWebsite(About.getWebsiteId(), About);
		pageResult = pageResult + dao.createPageForWebsite(Contact.getWebsiteId(), Contact);
		pageResult = pageResult + dao.createPageForWebsite(Preferences.getWebsiteId(), Preferences);
		pageResult = pageResult + dao.createPageForWebsite(Profile.getWebsiteId(), Profile);

		roleResult = roleDao.assignPageRole(12, 123, OWNER);
		roleResult = roleResult + roleDao.assignPageRole(23, 123, REVIEWER);
		roleResult = roleResult + roleDao.assignPageRole(34, 123, WRITER);
		
		roleResult = roleResult + roleDao.assignPageRole(23, 234, OWNER);
		roleResult = roleResult + roleDao.assignPageRole(34, 234, REVIEWER);
		roleResult = roleResult + roleDao.assignPageRole(12, 234, WRITER);

		roleResult = roleDao.assignPageRole(34, 345, OWNER);
		roleResult = roleResult + roleDao.assignPageRole(12, 345, REVIEWER);
		roleResult = roleResult + roleDao.assignPageRole(23, 345, WRITER);
		
		roleResult = roleResult + roleDao.assignPageRole(12, 456, OWNER);
		roleResult = roleResult + roleDao.assignPageRole(23, 456, REVIEWER);
		roleResult = roleResult + roleDao.assignPageRole(34, 456, WRITER);
		
		roleResult = roleResult + roleDao.assignPageRole(23, 567, OWNER);
		roleResult = roleResult + roleDao.assignPageRole(34, 567, REVIEWER);
		roleResult = roleResult + roleDao.assignPageRole(12, 567, WRITER);
		
		return pageResult;
	}

	public static int insertWidgets() {
		int result = 0;
		WidgetDao dao = WidgetDao.getInstance();

		Widget head123 = new Widget(123, "head123", 0, 0, null, null, "Welcome", 0, "Heading", null, false, false,
				null, 0, null, 123);
		Widget post234 = new Widget(234, "post234", 0, 0, null, null, "Lorem", 0, "Html", null, false, false,
				null, 0, null, 234);
		Widget head345 = new Widget(345, "head345", 0, 0, null, null, "Hi", 1, "Heading", null, false, false,
				null, 0, null, 345);
		Widget intro456 = new Widget(456, "intro456", 0, 0, null, null, "<h1>Hi</h1>", 2, "Html", null, false,
				false, null, 0, null, 345);
		Widget image345 = new Widget(567, "image345", 50, 100, null, null, null, 3, "Image", null, false, false,
				"/img/567.png", 0, null, 345);
		Widget video456 = new Widget(678, "video456", 400, 300, null, null, null, 0, "YouTube",
				"https://youtu.be/h67VX51QXiQ", false, false, null, 0, null, 456);

		result = dao.createWidgetForPage(head123.getPageId(), head123);
		result = result + dao.createWidgetForPage(post234.getPageId(), post234);
		result = result + dao.createWidgetForPage(head345.getPageId(), head345);
		result = result + dao.createWidgetForPage(intro456.getPageId(), intro456);
		result = result + dao.createWidgetForPage(image345.getPageId(), image345);
		result = result + dao.createWidgetForPage(video456.getPageId(), video456);

		return result;
	}

	public static int implementUpdate1() {
		int result = 0;
		WidgetDao dao = WidgetDao.getInstance();
		List<Widget> widgets = dao.findAllWidgets();
		Widget head345Widget = new Widget();
		
		for(int i = 0; i < widgets.size(); i++) {
			if(widgets.get(i).getName().equals("head345")) {
				head345Widget = widgets.get(i);
			}				
		}
		
		List<Widget> allPageWidgets = dao.findWidgetsForPage(head345Widget.getPageId());
		
		for(int i = 0; i < allPageWidgets.size(); i++) {
			if(allPageWidgets.get(i).getOrder() > head345Widget.getOrder() && allPageWidgets.get(i).getOrder() <= 3) {
				allPageWidgets.get(i).setOrder(allPageWidgets.get(i).getOrder() - 1);
				result = result + dao.updateWidget(allPageWidgets.get(i).getId(), allPageWidgets.get(i));
			}				
		}
		
		head345Widget.setOrder(3);
		result = result + dao.updateWidget(head345Widget.getId(), head345Widget);		
		
		return result;
	}

	public static int implementUpdate2() {
		int result = 0;

		WebsiteDao websiteDao = WebsiteDao.getInstance();
		List<Website> websites = websiteDao.findAllWebsites();
		Website CNET = new Website();
		
		for(int i = 0; i < websites.size(); i++) {
			if(websites.get(i).getName().equals("CNET")) {
				CNET = websites.get(i);
			}				
		}
		
		PageDao pageDao = PageDao.getInstance();
		List<Page> pages = pageDao.findPagesForWebsite(CNET.getId());
		for(int i = 0; i < pages.size(); i++) {
			pages.get(i).setTitle("CNET - " + pages.get(i).getTitle());	
			result = result +pageDao.updatePage(pages.get(i).getId(), pages.get(i));
		}
		
		return result;
	}

	public static int implementUpdate3() {
		int result = 0;

		WebsiteDao websiteDao = WebsiteDao.getInstance();
		List<Website> websites = websiteDao.findAllWebsites();
		Website CNET = new Website();
		
		for(int i = 0; i < websites.size(); i++) {
			if(websites.get(i).getName().equals("CNET")) {
				CNET = websites.get(i);
			}				
		}
		
		PageDao pageDao = PageDao.getInstance();
		List<Page> pages = pageDao.findPagesForWebsite(CNET.getId());
		Page CNETHomePage = new Page();
		
		for(int i = 0; i < pages.size(); i++) {
			if(pages.get(i).getTitle().equals("Home") || pages.get(i).getTitle().equals("CNET - Home")) {
				CNETHomePage = pages.get(i);
			}				
		}
		
		
		DeveloperDao developerDao = DeveloperDao.getInstance();
		RoleDao roleDao = RoleDao.getInstance();
		List<Role> roles = roleDao.findPageRoleByPageId(CNETHomePage.getId());
		Role charlieRole = new Role();
		Role bobRole = new Role();
		
		for(int i = 0; i < roles.size(); i++) {
			Developer developer = developerDao.findDeveloperById(roles.get(i).getDeveloperId());
			if(developer.getUsername().equals("charlie")) {
				charlieRole = roles.get(i);
			} else if (developer.getUsername().equals("bob")) {
				bobRole = roles.get(i);
			}
		}
		
		int tempRole = -1;
		tempRole = charlieRole.getRoleId();
		charlieRole.setRoleId(bobRole.getRoleId());
		bobRole.setRoleId(tempRole);
		
		result = roleDao.updatePageRole(charlieRole.getId(), charlieRole);
		result = result + roleDao.updatePageRole(bobRole.getId(), bobRole);
		
		
		return result;
	}

	public static int implementDelete1() {
		int result = 0;

		PageDao pageDao = PageDao.getInstance();
		List<Page> pages = pageDao.findAllPages();
		Page contactPage = new Page();
		for(int i = 0; i < pages.size(); i++) {
			if(pages.get(i).getTitle().equals("Contact")) {
				contactPage = pages.get(i);
			}				
		}
		
		WidgetDao widgetDao = WidgetDao.getInstance();
		List<Widget> widgets = widgetDao.findWidgetsForPage(contactPage.getId());
		Widget lastWidget = new Widget();
		
		for(int i = 0; i < widgets.size(); i++) {
			if(widgets.get(i).getOrder() > lastWidget.getOrder()) {
				lastWidget = widgets.get(i);
			}				
		}
		
		result = widgetDao.deleteWidget(lastWidget.getId());
		
		return result;
	}

	public static int implementDelete2() {
		int result = 0;

		WebsiteDao websiteDao = WebsiteDao.getInstance();
		List<Website> websites = websiteDao.findAllWebsites();
		Website Wikipedia = new Website();
		
		for(int i = 0; i < websites.size(); i++) {
			if(websites.get(i).getName().equals("Wikipedia")) {
				Wikipedia = websites.get(i);
			}				
		}
		
		PageDao pageDao = PageDao.getInstance();
		List<Page> pages = pageDao.findPagesForWebsite(Wikipedia.getId());
		
		Page lastUpadatedPage = new Page();
		lastUpadatedPage.setUpdated("0");
		for(int i = 0; i < pages.size(); i++) {
			
			  String d1 = pages.get(i).getUpdated().replace("-", "");
			  String d2 = lastUpadatedPage.getUpdated().replace("-", "");
			  if(d1.compareTo(d2) > 0) {
				  lastUpadatedPage = pages.get(i);
			  }
			  
		}
		
		result = pageDao.deletePage(lastUpadatedPage.getId());
		
		return result;
	}

	public static int implementDelete3() {
		int result = 0;

		WebsiteDao websiteDao = WebsiteDao.getInstance();
		List<Website> websites = websiteDao.findAllWebsites();
		Website CNET = new Website();
		
		for(int i = 0; i < websites.size(); i++) {
			if(websites.get(i).getName().equals("CNET")) {
				CNET = websites.get(i);
			}				
		}
		
		result = websiteDao.deleteWebsite(CNET.getId());
		
		return result;
	}

}
