USE `DE-AK`;

INSERT INTO company
	VALUES
		(2, "Cloud Native Computing Foundation", "Joe Beda");

INSERT INTO workDone
	VALUES
		((workDoneID), "Kubernetes", "Kubernetes (commonly stylised as k8s) is an open-source container orchestration system for automating application deployment, scaling, and management. It was originally designed by Google and is now maintained by the Cloud Native Computing Foundation.",
        "2014", NULL, NULL, NULL, NULL, 7, 2);
        
UPDATE company SET designer = "Joe Beda, Brendan Burns and Craig McLuckie" WHERE designer = "Joe Beda";



INSERT INTO company
	VALUES
		(3, "Docker, Inc", "Solomen Hykes");

INSERT INTO workDone
	VALUES
		((workDoneID), "Docker", "Docker is a computer program that performs operating-system-level virtualization, also known as 'containerization'. It was first released in 2013 and is developed by Docker, Inc",
        "2014", NULL, NULL, NULL, NULL, 7, 3);
        
UPDATE company SET designer = "Solomon Hykes" WHERE designer = "Solomen Hykes";


DELETE FROM workDone WHERE notableWork="Docker";
DELETE FROM company WHERE designer="Solomon Hykes";