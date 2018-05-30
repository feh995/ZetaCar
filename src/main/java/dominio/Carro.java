package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@SequenceGenerator(initialValue = 1, allocationSize = 1, name = "id", sequenceName = "id_unico")
@Table(name="carros")
public class Carro {
	
	@Column(name="marca")
	private String marca;
	
	@Column(name = "modelo")
	private String modelo;
	
	@Column(name = "preco")
	private double preco;
	
	@Column(name="direcao")
	private boolean direcao;
	
	@Column(name="cor")
	private String  cor;

	
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
}
