package co.fastcampus.author.mapstruct.mappers;

import co.fastcampus.author.entities.Author;
import co.fastcampus.author.mapstruct.dtos.AuthorAllDto;
import co.fastcampus.author.mapstruct.dtos.AuthorDto;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-02-01T16:36:13+0900",
    comments = "version: 1.4.2.Final, compiler: IncrementalProcessingEnvironment from gradle-language-java-7.6.jar, environment: Java 11.0.17 (Ubuntu)"
)
@Component
public class MapStructMapperImpl implements MapStructMapper {

    @Override
    public AuthorDto authorToAuthorDto(Author author) {
        if ( author == null ) {
            return null;
        }

        AuthorDto authorDto = new AuthorDto();

        authorDto.setId( author.getId() );
        authorDto.setName( author.getName() );
        authorDto.setSurname( author.getSurname() );
        authorDto.setBirthDate( author.getBirthDate() );

        return authorDto;
    }

    @Override
    public AuthorAllDto authorToAuthorAllDto(Author author) {
        if ( author == null ) {
            return null;
        }

        AuthorAllDto authorAllDto = new AuthorAllDto();

        authorAllDto.setId( author.getId() );
        authorAllDto.setName( author.getName() );
        authorAllDto.setSurname( author.getSurname() );
        authorAllDto.setBirthDate( author.getBirthDate() );

        return authorAllDto;
    }

    @Override
    public List<AuthorAllDto> authorsToAuthorAllDtos(List<Author> authors) {
        if ( authors == null ) {
            return null;
        }

        List<AuthorAllDto> list = new ArrayList<AuthorAllDto>( authors.size() );
        for ( Author author : authors ) {
            list.add( authorToAuthorAllDto( author ) );
        }

        return list;
    }
}
