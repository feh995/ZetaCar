package dominio;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Carro {
	
	private String marca;
	
	
	private String modelo;
	
	
	private double preco;
	
	
	private boolean direcao;
	
	private String  cor;
	
	
	private int id;
}
