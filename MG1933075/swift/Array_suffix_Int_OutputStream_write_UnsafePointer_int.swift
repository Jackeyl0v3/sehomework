/**类名_方法名(_形参类型)
 *  @author: mg1933075 xuyanting
 *  @className: Array_suffix_Int_OutputStream_write_UnsafePointer_int
 *  @apiSignature: Array$func suffix(from start: Int) -> ArraySlice<Element>;OutputStream$func func write(_ buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
 *  @description: Test swift api Array$suffix(from start: Int);OutputStream$write(_ buffer: UnsafePointer<UInt8>, maxLength len: Int)
 *  @Map: java.io.PrintStream$public void write​(byte[] buf,int off,int len)
 */
import Foundation
class Array_suffix_Int_OutputStream_write_UnsafePointer_int{
    /**
    *input : 4
    *class2 OutputStream$class2
    *from from=5
    *buffer buffer="hello,world"
    *length length=1
    *output: 0
    *OutputStream$class0-OutputStream$init?(toFileAtPath path: String, append shouldAppend: Bool) & String$path="file1.txt";Bool$shouldAppend=false
    */
    static func suffix_write0(){
        print(">>>>>>>>")
        let File1="file1.txt"
        let class2 = OutputStream(toFileAtPath: File1, append: false)
        let from=5
        let buffer="hello,world"
        let class0=["h","e","l","l","o",",","w","o","r","l","d"]
        let length=1
        class2!.open()
        let str1 = class0.suffix(from)
        let str2 = str1.reduce("", { x, y in x + y})
        class2!.write(str2,maxLength:length)
        let input1=InputStream(fileAtPath:File1)
        input1?.open()
        var data1=[UInt8](repeating: 0, count: 9)
        let tmp=input1?.read(&data1, maxLength: 9)
        assert(data1[0]==119)
        print(data1[0])
    }
    /**
    *input : 4
    *class2 OutputStream$class2
    *from from=0
    *buffer buffer="score:100"
    *length length=3
    *OutputStream$class0-OutputStream$init?(toFileAtPath path: String, append shouldAppend: Bool) & String$path="file1.txt";Bool$shouldAppend=false
    */
    static func suffix_write1(){
        print(">>>>>>>>")
        let File1="file1.txt"
        let class2 = OutputStream(toFileAtPath: File1, append: false)
        let from=0
        let buffer="score:100"
        let class0=["s","c","o","r","e",":","1","0","0"]
        let length=3
        class2!.open()
        let str1 = class0.suffix(from)
        let str2 = str1.reduce("", { x, y in x + y})
        class2!.write(str2,maxLength:length)
        let input1=InputStream(fileAtPath:File1)
        input1?.open()
        var data1=[UInt8](repeating: 0, count: 9)
        let tmp=input1?.read(&data1, maxLength: 9)
        assert(data1[1]==173)
        print(data1[1])
    }

}
Array_suffix_Int_OutputStream_write_UnsafePointer_int.suffix_write0()
Array_suffix_Int_OutputStream_write_UnsafePointer_int.suffix_write1()