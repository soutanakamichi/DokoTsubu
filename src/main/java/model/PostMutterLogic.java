package model;

//import java.util.List;

import dao.MuttersDAO;

public class PostMutterLogic {
//	public void execute(Mutter mutter, List<Mutter> mutterList) {
//		mutterList.add(0, mutter);
	public void execute(Mutter mutter) {
		MuttersDAO dao = new MuttersDAO();
		dao.create(mutter);
	}
}
