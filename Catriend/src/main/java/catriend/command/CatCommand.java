package catriend.command;

import org.springframework.ui.Model;

public interface CatCommand {

	// 추상메소드 - 오버라이딩의 목적으로 생성됨
	public void execute(Model model);
}
