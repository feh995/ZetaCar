package dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name="marcas")
public class Marca {
	
	@Id
	@Column(name = "nome")
	private String nome;
	
	@Column(name="pais")
	private String pais;
	
	
}