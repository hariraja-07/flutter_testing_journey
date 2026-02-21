# Flutter Testing Journey

Learning Flutter unit, widget, and integration testing.

---

## Testing

Testing is the process of verifying that application components function as intended —  
without crashing, producing errors, or exhibiting any unintended behavior.

> *"When you don't test your code, your code tests your sanity."*  
> — **Definitely not an ancient proverb**

---

## Types of Testing

There are two main testing methods.

### 1) Manual Testing

This method involves finding and resolving bugs in your Flutter application yourself.

> *"In manual testing, Superman is born — with his superpower, he detects and destroys all the bugs… until Batman is seen at 3 AM."*

---

### 2) Automated Testing

Automated testing helps prevent **known and expected bugs**.

> *"In automated testing, the software has bugs — but it does not have expected bugs. It's that simple."*

---

## Why Manual Testing over Automated Testing

> *"Nothing to see here… seriously, skip this."*

> *"Just kidding — manual testing is useful in edge cases, but it should never be your only strategy."*

---

## Why Automated Testing over Manual Testing

Imagine you're the creator of a large e-commerce application.

With **manual testing**, you need:
- A team of testers  
- Big salaries  
- Lower productivity  
- Error-prone results  
- Time-consuming processes  

With **automated testing**, application components are written alongside tests for known bugs — eliminating most of these issues.

> *"That's why we need automated testing now — Avengers, assemble!"*

---

## Types of Automated Testing

Flutter supports three levels of automated testing:
- Unit Tests  
- Widget Tests  
- Integration Tests  

---

### 1) Unit Tests

A unit test verifies the behavior of an **isolated piece of code** — a single function, method, or class.

No Flutter framework.  
No real database.  
No network calls.  
Just pure logic.

> *"Waiting for a punchy quote? It's literally just testing a single unit, my lord."*

---

### 2) Widget Tests

A widget test verifies the **UI** of the application by building widgets, tapping buttons, and checking what appears on the screen — all without a real device.

> *"Sad that after this you don’t need your dear friend to test your application UI :/"*

---

### 3) Integration Tests

Integration tests verify the **entire app flow** — from UI interactions to backend communication — on a real device or emulator.

> *"This is where your app stops lying and proves it actually works."*