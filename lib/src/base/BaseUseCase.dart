abstract class BaseUseCase<I, R> {
  Future<R> perform(I withData);
}
