package co.fastcampus.user.mappers;

import co.fastcampus.user.dtos.UserGetDto;
import co.fastcampus.user.dtos.UserPostDto;
import co.fastcampus.user.entities.User;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-02-01T16:37:25+0900",
    comments = "version: 1.4.2.Final, compiler: IncrementalProcessingEnvironment from gradle-language-java-7.6.jar, environment: Java 11.0.17 (Ubuntu)"
)
@Component
public class UserMapperImpl implements UserMapper {

    @Override
    public UserGetDto userToUserGetDto(User user) {
        if ( user == null ) {
            return null;
        }

        UserGetDto userGetDto = new UserGetDto();

        userGetDto.setId( user.getId() );
        userGetDto.setEmail( user.getEmail() );
        userGetDto.setName( user.getName() );
        userGetDto.setPassword( user.getPassword() );
        userGetDto.setSurname( user.getSurname() );

        return userGetDto;
    }

    @Override
    public User userPostDtoToUser(UserPostDto userPostDto) {
        if ( userPostDto == null ) {
            return null;
        }

        User user = new User();

        user.setId( userPostDto.getId() );
        user.setEmail( userPostDto.getEmail() );
        user.setPassword( userPostDto.getPassword() );
        user.setName( userPostDto.getName() );
        user.setSurname( userPostDto.getSurname() );

        return user;
    }

    @Override
    public List<UserGetDto> userToUserGetDto(List<User> users) {
        if ( users == null ) {
            return null;
        }

        List<UserGetDto> list = new ArrayList<UserGetDto>( users.size() );
        for ( User user : users ) {
            list.add( userToUserGetDto( user ) );
        }

        return list;
    }
}
